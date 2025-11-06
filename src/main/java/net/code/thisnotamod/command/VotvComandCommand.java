package net.code.thisnotamod.command;

import net.minecraftforge.common.util.FakePlayerFactory;
import net.minecraftforge.event.RegisterCommandsEvent;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.common.Mod;

import net.minecraft.commands.CommandBuildContext;
import net.minecraft.commands.Commands;
import net.minecraft.commands.SharedSuggestionProvider;
import net.minecraft.commands.arguments.EntityArgument;
import net.minecraft.commands.arguments.MessageArgument;
import net.minecraft.commands.arguments.ResourceLocationArgument;
import net.minecraft.commands.arguments.item.ItemArgument;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.level.Level;

import net.code.thisnotamod.procedures.AllowDebugFalseProcedure;
import net.code.thisnotamod.procedures.AllowDebugTrueProcedure;
import net.code.thisnotamod.procedures.SendCustomProcedureProcedure;
import net.code.thisnotamod.procedures.SendErrorProcedure;
import net.code.thisnotamod.procedures.SendInfoProcedure;
import net.code.thisnotamod.procedures.SendWarnProcedure;

import net.minecraftforge.registries.ForgeRegistries;

@Mod.EventBusSubscriber
public class VotvComandCommand {
    @SubscribeEvent
    public static void registerCommand(RegisterCommandsEvent event) {
        CommandBuildContext buildCtx = event.getBuildContext();

        event.getDispatcher().register(
            Commands.literal("votv").requires(s -> s.hasPermission(4))

            // /votv AllowDebug true|false
            .then(Commands.literal("AllowDebug")
                .then(Commands.literal("true").executes(arguments -> {
                    Level world = arguments.getSource().getUnsidedLevel();
                    Entity entity = arguments.getSource().getEntity();
                    if (entity == null && world instanceof ServerLevel serv) entity = FakePlayerFactory.getMinecraft(serv);
                    if (entity != null) AllowDebugTrueProcedure.execute(world, entity);
                    return 0;
                }))
                .then(Commands.literal("false").executes(arguments -> {
                    Level world = arguments.getSource().getUnsidedLevel();
                    Entity entity = arguments.getSource().getEntity();
                    if (entity == null && world instanceof ServerLevel serv) entity = FakePlayerFactory.getMinecraft(serv);
                    if (entity != null) AllowDebugFalseProcedure.execute(entity);
                    return 0;
                }))
            )

            // /votv send hint <type> ...
            .then(Commands.literal("send")
                .then(Commands.literal("hint")

                    // info
                    .then(Commands.literal("info")
                        .then(Commands.argument("player_info", EntityArgument.player())
                            .then(Commands.argument("info_text", MessageArgument.message())
                                .executes(arguments -> {
                                    Level world = arguments.getSource().getUnsidedLevel();
                                    Entity entity = arguments.getSource().getEntity();
                                    if (entity == null && world instanceof ServerLevel serv) entity = FakePlayerFactory.getMinecraft(serv);
                                    if (entity != null) SendInfoProcedure.execute(world, arguments);
                                    return 0;
                                })
                            )
                        )
                    )

                    // warn
                    .then(Commands.literal("warn")
                        .then(Commands.argument("player_warn", EntityArgument.player())
                            .then(Commands.argument("warn_text", MessageArgument.message())
                                .executes(arguments -> {
                                    Level world = arguments.getSource().getUnsidedLevel();
                                    Entity entity = arguments.getSource().getEntity();
                                    if (entity == null && world instanceof ServerLevel serv) entity = FakePlayerFactory.getMinecraft(serv);
                                    if (entity != null) SendWarnProcedure.execute(world, arguments);
                                    return 0;
                                })
                            )
                        )
                    )

                    // error
                    .then(Commands.literal("error")
                        .then(Commands.argument("player_error", EntityArgument.player())
                            .then(Commands.argument("error_text", MessageArgument.message())
                                .executes(arguments -> {
                                    Level world = arguments.getSource().getUnsidedLevel();
                                    Entity entity = arguments.getSource().getEntity();
                                    if (entity == null && world instanceof ServerLevel serv) entity = FakePlayerFactory.getMinecraft(serv);
                                    if (entity != null) SendErrorProcedure.execute(world, arguments);
                                    return 0;
                                })
                            )
                        )
                    )

                    // custom: <player> <icon> <sound> <custom_text>
                    .then(Commands.literal("custom")
                        .then(Commands.argument("player_custom", EntityArgument.player())
                            .then(Commands.argument("icon", ItemArgument.item(buildCtx))
                                .then(Commands.argument("sound", ResourceLocationArgument.id())
                                    .suggests((ctx, b) ->
                                        SharedSuggestionProvider.suggestResource(ForgeRegistries.SOUND_EVENTS.getKeys(), b))
                                    .then(Commands.argument("custom_text", MessageArgument.message())
                                        .executes(arguments -> {
                                            Level world = arguments.getSource().getUnsidedLevel();
                                            Entity entity = arguments.getSource().getEntity();
                                            if (entity == null && world instanceof ServerLevel serv) entity = FakePlayerFactory.getMinecraft(serv);
                                            if (entity != null) SendCustomProcedureProcedure.execute(world, arguments);
                                            return 0;
                                        })
                                    )
                                )
                            )
                        )
                    )
                )
            )
        );
    }
}

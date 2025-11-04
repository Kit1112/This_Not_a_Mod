
package net.code.thisnotamod.command;

import org.checkerframework.checker.units.qual.s;

import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.event.RegisterCommandsEvent;
import net.minecraftforge.common.util.FakePlayerFactory;

import net.minecraft.world.level.Level;
import net.minecraft.world.entity.Entity;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.core.Direction;
import net.minecraft.commands.arguments.MessageArgument;
import net.minecraft.commands.Commands;

import net.code.thisnotamod.procedures.SendWarnProcedure;
import net.code.thisnotamod.procedures.SendInfoProcedure;
import net.code.thisnotamod.procedures.SendErrorProcedure;
import net.code.thisnotamod.procedures.ScannerSpeedProcedure;
import net.code.thisnotamod.procedures.ScannerCooldownProcedure;
import net.code.thisnotamod.procedures.PolarityFilterWidthProcedure;
import net.code.thisnotamod.procedures.PingerSuccesChanceProcedure;
import net.code.thisnotamod.procedures.PingerSpeedProcedure;
import net.code.thisnotamod.procedures.FrequencyFilterWidthProcedure;
import net.code.thisnotamod.procedures.DownloadSpeedProcedure;
import net.code.thisnotamod.procedures.DetectorSpeedProcedure;
import net.code.thisnotamod.procedures.AllowDebugTrueProcedure;
import net.code.thisnotamod.procedures.AllowDebugFalseProcedure;

import com.mojang.brigadier.arguments.DoubleArgumentType;

@Mod.EventBusSubscriber
public class VotvComandCommand {
	@SubscribeEvent
	public static void registerCommand(RegisterCommandsEvent event) {
		event.getDispatcher().register(Commands.literal("votv").requires(s -> s.hasPermission(4)).then(Commands.literal("AllowDebug").then(Commands.literal("true").executes(arguments -> {
			Level world = arguments.getSource().getUnsidedLevel();
			double x = arguments.getSource().getPosition().x();
			double y = arguments.getSource().getPosition().y();
			double z = arguments.getSource().getPosition().z();
			Entity entity = arguments.getSource().getEntity();
			if (entity == null && world instanceof ServerLevel _servLevel)
				entity = FakePlayerFactory.getMinecraft(_servLevel);
			Direction direction = Direction.DOWN;
			if (entity != null)
				direction = entity.getDirection();

			AllowDebugTrueProcedure.execute(world, entity);
			return 0;
		})).then(Commands.literal("false").executes(arguments -> {
			Level world = arguments.getSource().getUnsidedLevel();
			double x = arguments.getSource().getPosition().x();
			double y = arguments.getSource().getPosition().y();
			double z = arguments.getSource().getPosition().z();
			Entity entity = arguments.getSource().getEntity();
			if (entity == null && world instanceof ServerLevel _servLevel)
				entity = FakePlayerFactory.getMinecraft(_servLevel);
			Direction direction = Direction.DOWN;
			if (entity != null)
				direction = entity.getDirection();

			AllowDebugFalseProcedure.execute(entity);
			return 0;
		}))).then(Commands.literal("modifier").then(Commands.literal("scanner_speed").then(Commands.argument("speed", DoubleArgumentType.doubleArg(0.1, 2)).executes(arguments -> {
			Level world = arguments.getSource().getUnsidedLevel();
			double x = arguments.getSource().getPosition().x();
			double y = arguments.getSource().getPosition().y();
			double z = arguments.getSource().getPosition().z();
			Entity entity = arguments.getSource().getEntity();
			if (entity == null && world instanceof ServerLevel _servLevel)
				entity = FakePlayerFactory.getMinecraft(_servLevel);
			Direction direction = Direction.DOWN;
			if (entity != null)
				direction = entity.getDirection();

			ScannerSpeedProcedure.execute(arguments, entity);
			return 0;
		}))).then(Commands.literal("pinger_cooldown").then(Commands.argument("pinger_cooldown", DoubleArgumentType.doubleArg(0, 60)).executes(arguments -> {
			Level world = arguments.getSource().getUnsidedLevel();
			double x = arguments.getSource().getPosition().x();
			double y = arguments.getSource().getPosition().y();
			double z = arguments.getSource().getPosition().z();
			Entity entity = arguments.getSource().getEntity();
			if (entity == null && world instanceof ServerLevel _servLevel)
				entity = FakePlayerFactory.getMinecraft(_servLevel);
			Direction direction = Direction.DOWN;
			if (entity != null)
				direction = entity.getDirection();

			ScannerCooldownProcedure.execute(arguments, entity);
			return 0;
		}))).then(Commands.literal("pinger_speed").then(Commands.argument("PingerSpeed", DoubleArgumentType.doubleArg(0.1, 1)).executes(arguments -> {
			Level world = arguments.getSource().getUnsidedLevel();
			double x = arguments.getSource().getPosition().x();
			double y = arguments.getSource().getPosition().y();
			double z = arguments.getSource().getPosition().z();
			Entity entity = arguments.getSource().getEntity();
			if (entity == null && world instanceof ServerLevel _servLevel)
				entity = FakePlayerFactory.getMinecraft(_servLevel);
			Direction direction = Direction.DOWN;
			if (entity != null)
				direction = entity.getDirection();

			PingerSpeedProcedure.execute(arguments, entity);
			return 0;
		}))).then(Commands.literal("pinger_succes_chance").then(Commands.argument("pinger_succes_chance", DoubleArgumentType.doubleArg(0.01, 1)).executes(arguments -> {
			Level world = arguments.getSource().getUnsidedLevel();
			double x = arguments.getSource().getPosition().x();
			double y = arguments.getSource().getPosition().y();
			double z = arguments.getSource().getPosition().z();
			Entity entity = arguments.getSource().getEntity();
			if (entity == null && world instanceof ServerLevel _servLevel)
				entity = FakePlayerFactory.getMinecraft(_servLevel);
			Direction direction = Direction.DOWN;
			if (entity != null)
				direction = entity.getDirection();

			PingerSuccesChanceProcedure.execute(arguments, entity);
			return 0;
		}))).then(Commands.literal("detector_speed").then(Commands.argument("detector_speed", DoubleArgumentType.doubleArg(1, 100)).executes(arguments -> {
			Level world = arguments.getSource().getUnsidedLevel();
			double x = arguments.getSource().getPosition().x();
			double y = arguments.getSource().getPosition().y();
			double z = arguments.getSource().getPosition().z();
			Entity entity = arguments.getSource().getEntity();
			if (entity == null && world instanceof ServerLevel _servLevel)
				entity = FakePlayerFactory.getMinecraft(_servLevel);
			Direction direction = Direction.DOWN;
			if (entity != null)
				direction = entity.getDirection();

			DetectorSpeedProcedure.execute(arguments, entity);
			return 0;
		}))).then(Commands.literal("download_speed").then(Commands.argument("download_speed", DoubleArgumentType.doubleArg(1, 100)).executes(arguments -> {
			Level world = arguments.getSource().getUnsidedLevel();
			double x = arguments.getSource().getPosition().x();
			double y = arguments.getSource().getPosition().y();
			double z = arguments.getSource().getPosition().z();
			Entity entity = arguments.getSource().getEntity();
			if (entity == null && world instanceof ServerLevel _servLevel)
				entity = FakePlayerFactory.getMinecraft(_servLevel);
			Direction direction = Direction.DOWN;
			if (entity != null)
				direction = entity.getDirection();

			DownloadSpeedProcedure.execute(arguments, entity);
			return 0;
		}))).then(Commands.literal("frequency_filter_width").then(Commands.argument("frequency_filter_width", DoubleArgumentType.doubleArg(0.1, 100)).executes(arguments -> {
			Level world = arguments.getSource().getUnsidedLevel();
			double x = arguments.getSource().getPosition().x();
			double y = arguments.getSource().getPosition().y();
			double z = arguments.getSource().getPosition().z();
			Entity entity = arguments.getSource().getEntity();
			if (entity == null && world instanceof ServerLevel _servLevel)
				entity = FakePlayerFactory.getMinecraft(_servLevel);
			Direction direction = Direction.DOWN;
			if (entity != null)
				direction = entity.getDirection();

			FrequencyFilterWidthProcedure.execute(arguments, entity);
			return 0;
		}))).then(Commands.literal("polarity_filter_width").then(Commands.argument("polarity_filter_width", DoubleArgumentType.doubleArg(0.1, 100)).executes(arguments -> {
			Level world = arguments.getSource().getUnsidedLevel();
			double x = arguments.getSource().getPosition().x();
			double y = arguments.getSource().getPosition().y();
			double z = arguments.getSource().getPosition().z();
			Entity entity = arguments.getSource().getEntity();
			if (entity == null && world instanceof ServerLevel _servLevel)
				entity = FakePlayerFactory.getMinecraft(_servLevel);
			Direction direction = Direction.DOWN;
			if (entity != null)
				direction = entity.getDirection();

			PolarityFilterWidthProcedure.execute(arguments, entity);
			return 0;
		})))).then(Commands.literal("send").then(Commands.literal("hint").then(Commands.literal("info").then(Commands.argument("info_text", MessageArgument.message()).executes(arguments -> {
			Level world = arguments.getSource().getUnsidedLevel();
			double x = arguments.getSource().getPosition().x();
			double y = arguments.getSource().getPosition().y();
			double z = arguments.getSource().getPosition().z();
			Entity entity = arguments.getSource().getEntity();
			if (entity == null && world instanceof ServerLevel _servLevel)
				entity = FakePlayerFactory.getMinecraft(_servLevel);
			Direction direction = Direction.DOWN;
			if (entity != null)
				direction = entity.getDirection();

			SendInfoProcedure.execute(world, arguments);
			return 0;
		}))).then(Commands.literal("warn").then(Commands.argument("warn_text", MessageArgument.message()).executes(arguments -> {
			Level world = arguments.getSource().getUnsidedLevel();
			double x = arguments.getSource().getPosition().x();
			double y = arguments.getSource().getPosition().y();
			double z = arguments.getSource().getPosition().z();
			Entity entity = arguments.getSource().getEntity();
			if (entity == null && world instanceof ServerLevel _servLevel)
				entity = FakePlayerFactory.getMinecraft(_servLevel);
			Direction direction = Direction.DOWN;
			if (entity != null)
				direction = entity.getDirection();

			SendWarnProcedure.execute(world, arguments);
			return 0;
		}))).then(Commands.literal("error").then(Commands.argument("error_text", MessageArgument.message()).executes(arguments -> {
			Level world = arguments.getSource().getUnsidedLevel();
			double x = arguments.getSource().getPosition().x();
			double y = arguments.getSource().getPosition().y();
			double z = arguments.getSource().getPosition().z();
			Entity entity = arguments.getSource().getEntity();
			if (entity == null && world instanceof ServerLevel _servLevel)
				entity = FakePlayerFactory.getMinecraft(_servLevel);
			Direction direction = Direction.DOWN;
			if (entity != null)
				direction = entity.getDirection();

			SendErrorProcedure.execute(world, arguments);
			return 0;
		}))))));
	}
}

#!/bin/bash
# Minecraft Launcher
echo -e "\e[0;32mWelcome to NanoMC!\e[0m"
echo "github.com/skidsploiter/NanoMC"

# Main directory of the game
MC_DIR="$(pwd)/mcdata"

# Game directory (saves/, resourcepacks/, screenshots/, options.txt, servers.dat)
GAME_DIR="$MC_DIR"

# Libraries and resource dir (no changes needed)
ASSETS_DIR="$MC_DIR/assets"

ASSETS_INDEX="1.8"

# Minecraft version (from versions/ dir)
VERSION="1.8.9"

# Get native libraries from natives/ dir
NATIVES_DIR="$MC_DIR/natives/1.8.9"

# Read username from user input
read -p "Set a Username: " PLAYER_NAME

# Resolution
WIDTH=930
HEIGHT=540

# Change to mcdata directory
cd "$(dirname "$0")/mcdata" || exit 1

# Run Minecraft with javaw equivalent on Linux (java)
java -Xmx2G -Djava.library.path="$NATIVES_DIR" -cp "$MC_DIR/libraries/oshi-project/oshi-core/1.1/oshi-core-1.1.jar":"$MC_DIR/libraries/org/lwjgl/lwjgl/lwjgl/2.9.4-nightly-20150209/lwjgl-2.9.4-nightly-20150209.jar":"$MC_DIR/libraries/org/lwjgl/lwjgl/lwjgl-platform/2.9.4-nightly-20150209/lwjgl-platform-2.9.4-nightly-20150209-natives-linux.jar":"$MC_DIR/libraries/org/lwjgl/lwjgl/lwjgl_util/2.9.4-nightly-20150209/lwjgl_util-2.9.4-nightly-20150209.jar":"$MC_DIR/libraries/org/apache/commons/commons-lang3/3.3.2/commons-lang3-3.3.2.jar":"$MC_DIR/libraries/org/apache/commons/commons-compress/1.8.1/commons-compress-1.8.1.jar":"$MC_DIR/libraries/org/apache/httpcomponents/httpcore/4.3.2/httpcore-4.3.2.jar":"$MC_DIR/libraries/net/minecraftforge/forge/1.8.9-11.15.1.2318-1.8.9/forge-1.8.9-11.15.1.2318-1.8.9-universal.jar":"$MC_DIR/libraries/net/minecraft/launchwrapper/1.12/launchwrapper-1.12.jar":"$MC_DIR/libraries/org/ow2/asm/asm-all/5.0.3/asm-all-5.0.3.jar":"$MC_DIR/libraries/jline/jline/2.13/jline-2.13.jar":"$MC_DIR/libraries/com/typesafe/akka/akka-actor_2.11/2.3.3/akka-actor_2.11-2.3.3.jar":"$MC_DIR/libraries/com/typesafe/config/1.2.1/config-1.2.1.jar":"$MC_DIR/libraries/org/scala-lang/scala-actors-migration_2.11/1.1.0/scala-actors-migration_2.11-1.1.0.jar":"$MC_DIR/libraries/org/scala-lang/scala-compiler/2.11.1/scala-compiler-2.11.1.jar":"$MC_DIR/libraries/org/scala-lang/plugins/scala-continuations-library_2.11/1.0.2/scala-continuations-library_2.11-1.0.2.jar":"$MC_DIR/libraries/org/scala-lang/plugins/scala-continuations-plugin_2.11.1/1.0.2/scala-continuations-plugin_2.11.1-1.0.2.jar":"$MC_DIR/libraries/org/scala-lang/scala-library/2.11.1/scala-library-2.11.1.jar":"$MC_DIR/libraries/org/scala-lang/scala-parser-combinators_2.11/1.0.1/scala-parser-combinators_2.11-1.0.1.jar":"$MC_DIR/libraries/org/scala-lang/scala-reflect/2.11.1/scala-reflect-2.11.1.jar":"$MC_DIR/libraries/org/scala-lang/scala-swing_2.11/1.0.1/scala-swing_2.11-1.0.1.jar":"$MC_DIR/libraries/org/scala-lang/scala-xml_2.11/1.0.2/scala-xml_2.11-1.0.2.jar":"$MC_DIR/libraries/lzma/lzma/0.0.1/lzma-0.0.1.jar":"$MC_DIR/libraries/java3d/vecmath/1.5.2/vecmath-1.5.2.jar":"$MC_DIR/libraries/net/sf/trove4j/trove4j/3.0.3/trove4j-3.0.3.jar":"$MC_DIR/libraries/com/mojang/minecraft/1.8.9/minecraft-1.8.9-client.jar":"$MC_DIR/libraries/org/apache/httpcomponents/httpclient/4.3.3/httpclient-4.3.3.jar":"$MC_DIR/libraries/org/apache/logging/log4j/log4j-core/2.0-beta9/log4j-core-2.0-beta9.jar":"$MC_DIR/libraries/org/apache/logging/log4j/log4j-api/2.0-beta9/log4j-api-2.0-beta9.jar":"$MC_DIR/libraries/commons-logging/commons-logging/1.1.3/commons-logging-1.1.3.jar":"$MC_DIR/libraries/net/sf/jopt-simple/jopt-simple/4.6/jopt-simple-4.6.jar":"$MC_DIR/libraries/net/java/jutils/jutils/1.0.0/jutils-1.0.0.jar":"$MC_DIR/libraries/net/java/dev/jna/platform/3.4.0/platform-3.4.0.jar":"$MC_DIR/libraries/net/java/dev/jna/jna/3.4.0/jna-3.4.0.jar":"$MC_DIR/libraries/net/java/jinput/jinput-platform/2.0.5/jinput-platform-2.0.5-natives-linux.jar":"$MC_DIR/libraries/net/java/jinput/jinput/2.0.5/jinput-2.0.5.jar":"$MC_DIR/libraries/commons-io/commons-io/2.4/commons-io-2.4.jar":"$MC_DIR/libraries/tv/twitch/twitch-platform/6.5/twitch-platform-6.5-natives-linux-64.jar":"$MC_DIR/libraries/tv/twitch/twitch-external-platform/4.5/twitch-external-platform-4.5-natives-linux-64.jar":"$MC_DIR/libraries/tv/twitch/twitch/6.5/twitch-6.5.jar":"$MC_DIR/libraries/io/netty/netty-all/4.0.23.Final/netty-all-4.0.23.Final.jar":"$MC_DIR/libraries/com/google/code/gson/gson/2.2.4/gson-2.2.4.jar":"$MC_DIR/libraries/com/google/guava/guava/17.0/guava-17.0.jar":"$MC_DIR/libraries/com/paulscode/libraryjavasound/20101123/libraryjavasound-20101123.jar":"$MC_DIR/libraries/com/paulscode/soundsystem/20120107/soundsystem-20120107.jar":"$MC_DIR/libraries/com/paulscode/codecjorbis/20101023/codecjorbis-20101023.jar":"$MC_DIR/libraries/com/paulscode/librarylwjglopenal/20100824/librarylwjglopenal-20100824.jar":"$MC_DIR/libraries/com/paulscode/codecwav/20101023/codecwav-20101023.jar":"$MC_DIR/libraries/com/mojang/authlib/1.5.21/authlib-1.5.21.jar":"$MC_DIR/libraries/com/mojang/realms/1.7.53/realms-1.7.53.jar":"$MC_DIR/libraries/com/ibm/icu/icu4j-core-mojang/51.2/icu4j-core-mojang-51.2.jar":"$MC_DIR/libraries/commons-codec/commons-codec/1.9/commons-codec-1.9.jar":"$MC_DIR/versions/1.8.9/1.8.9.jar" net.minecraft.launchwrapper.Launch --username "$PLAYER_NAME" --version 1.8.9 --accessToken 0 --userProperties {} --gameDir "$GAME_DIR" --assetsDir "$ASSETS_DIR" --assetIndex "$ASSETS_INDEX" --width $WIDTH --height $HEIGHT --tweakClass net.minecraftforge.fml.common.launcher.FMLTweaker

import {
  defineTask,
  home,
  link,
  printCheckResults,
} from "https://deno.land/x/moira@0.1.0/mod.ts";

if (!home) throw new Error("$HOME is not set");

const deploy = defineTask([
  link({
    source: "./config/asdf/rc",
    destination: `${home}/.asdfrc`,
  }),
  link({
    source: "./config/awesome",
    destination: `${home}/.config/awesome`,
  }),
  link({
    source: "./config/bat",
    destination: `${home}/.config/bat`,
  }),
  link({
    source: "./config/Code/User/settings.json",
    destination: `${home}/.config/Code/User/settings.json`,
  }),
  link({
    source: "./config/fcitx5",
    destination: `${home}/.config/fcitx5`,
  }),
  link({
    source: "./config/git",
    destination: `${home}/.config/git`,
  }),
  link({
    source: "./config/libskk",
    destination: `${home}/.config/libskk`,
  }),
  link({
    source: "./config/mpd/mpd.conf",
    destination: `${home}/.config/mpd/mpd.conf`,
  }),
  link({
    source: "./config/mpDris2/mpDris2.conf",
    destination: `${home}/.config/mpDris2/mpDris2.conf`,
  }),
  link({
    source: "./config/ncmpcpp/bindings",
    destination: `${home}/.config/ncmpcpp/bindings`,
  }),
  link({
    source: "./config/ncmpcpp/config",
    destination: `${home}/.config/ncmpcpp/config`,
  }),
  link({
    source: "./config/npm",
    destination: `${home}/.config/npm`,
  }),
  link({
    source: "./config/pipewire",
    destination: `${home}/.config/pipewire`,
  }),
  link({
    source: "./config/ssh/config",
    destination: `${home}/.ssh/config`,
  }),
  link({
    source: "./config/starship",
    destination: `${home}/.config/starship`,
  }),
  link({
    source: "./config/wezterm",
    destination: `${home}/.config/wezterm`,
  }),
  link({
    source: "./config/X11",
    destination: `${home}/.config/X11`,
  }),
  link({
    source: "./config/zsh",
    destination: `${home}/.config/zsh`,
  }),
  link({
    source: "./misc/fonts",
    destination: `${home}/.local/share/fonts`,
  }),
]);

if (Deno.args.includes("deploy")) {
  if (Deno.args.includes("run")) {
    await deploy.run();
  } else {
    printCheckResults(await deploy.check());
  }
} else {
  console.log(`unknown commands: ${Deno.args}`);
  Deno.exit(1);
}

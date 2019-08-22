# Avahi Tools
A [Chassis](https://github.com/Chassis/Chassis) extension to install [Avahi](https://www.avahi.org/) related packages for debugging Avahi issues.

## Project Installation
1. Add this extension to your extensions directory `git clone git@github.com:Chassis/Avahi_Tools.git extensions/avahi_tools` or alternatively add the following to one of your [`.yaml`](https://github.com/Chassis/Chassis/blob/master/config.yaml) files:
   ```
   extensions:
     - chassis/avahi_tools
   ```
2. Set your `config.local.yaml` PHP version to 5.6 or higher.
3. Run `vagrant provision`.
4. Start debugging Avahi!

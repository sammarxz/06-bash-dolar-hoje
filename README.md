# 06-bash-dolar-hoje
ok, I missed a few more days ... I'm sorry, it's okay. So, on this sixth and penultimate day, I decided to learn a little bash script and create a simple script that converts Dolar to Real. I receive my payments in dollars so I use a lot of services like that. And since my habitat is basically the terminal, I thought it would be useful to create a script to convert and quickly know the value of the dollar.

I'm using the [exchangeratesapi](https://exchangeratesapi.io/), it's very simple. 

The logic is simple, make a request and get the necessary information from the result in Json. So to work with json through bash, I needed an extra tool: [Bash jq command](https://linuxhint.com/bash_jq_command/), so if you want to make this script work there on your machine, make sure you have the jq installed.

```
$ sudo apt-get install jq
```

## How to use
So, we basically have **3 modes** of execution of this and any other script in linux:

**1. Running with bash**

```
$ bash dolarhoje.bash
```

**2. Making executable**

```
$ chmod +x dolarhoje.bash
$ ./dolarhoje.bash
```

**3. Or making it universal**

```
$ cp .dolarhoje ~/
```
* Open `~/.bashrc` or `~/.zshrc` using any text editor you have
* Add the following command after the last line or anywhere you want:
`source ~/.dolarhoje`
* Save file after adding the new line and reboot the terminal: `source .zshrc` or `source .bashrc`

Now you have access to the command like this:

```
$ dolarhoje
$ dolarhoje 12 # convert 12 dollars to real
```


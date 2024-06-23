import subprocess
from telegram import Update
from telegram.ext import Updater, CommandHandler, MessageHandler, Filters, CallbackContext

# Replace with your actual Telegram bot API token
TOKEN = '7363306505:AAG2CUmxLRTDB3Fo5u2KEdAPv3CuQG6EqNg'

def start(update: Update, context: CallbackContext) -> None:
    update.message.reply_text('Welcome to your Linux shell! Send me a command.')

def execute_command(update: Update, context: CallbackContext) -> None:
    command = update.message.text.strip()
    try:
        result = subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT, text=True)
        update.message.reply_text(result)
    except subprocess.CalledProcessError as e:
        update.message.reply_text(f'Error: {e.output}')

def main() -> None:
    updater = Updater(TOKEN, use_context=True)
    dispatcher = updater.dispatcher

    dispatcher.add_handler(CommandHandler("start", start))
    dispatcher.add_handler(MessageHandler(Filters.text & ~Filters.command, execute_command))

    updater.start_polling()
    updater.idle()

if __name__ == '__main__':
    main()

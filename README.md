# FlashMessage

Flash message web utility


Example usage from controller

	FlashMessage.createInfoMessage(request.getSession(), "flashMessage.yoDawg");

	FlashMessage.createErrorMessage(request.getSession(), "flashMessage.yoDawgYoFail");

Example usage inside jsp page

	<tags:flash-message />

## License

MIT License
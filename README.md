# Flash message web utility for Java projects using Spring Framework #

This is a simple flash message utility for Java projects using Spring Framework. It provides a custom JSTL tag which can be used in JSP pages to display messages.

## Example usage from controller ##

FlashMessage utility class provides four different message types similarly to Twitter Bootstrap.

	FlashMessage.createAlertMessage(session, "message.key.alert");

	FlashMessage.createInfoMessage(session, "message.key.info");

	FlashMessage.createErrorMessage(session, "message.key.error");

	FlashMessage.createSuccessMessage(session, "message.key.success");

Utility class provides also methods that can handle additional message parameters.

	FlashMessage.createAlertMessage(session, "message.key.alert", param1);

	FlashMessage.createInfoMessage(session, "message.key.info", param1, param2);

	FlashMessage.createErrorMessage(session, "message.key.error", param1);

	FlashMessage.createSuccessMessage(session, "message.key.success", param1, param2, param3);

## Example usage from a JSP page ##

Flash message tag is used to render the messages in the view JSP page. Message levels are mapped with Twitter Bootstrap equivalent

	<tags:flash-message/>

Messages are mapped in following order and by according to Twitter Bootstrap

    <div class="alert alert-error">

    <div class="alert alert-success">

    <div class="alert alert-info">

    <div class="alert">

and rember to configure your tag library location

    <%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

### License ###

Copyright © 2013 Solita Oy

Distributed under the MIT License.
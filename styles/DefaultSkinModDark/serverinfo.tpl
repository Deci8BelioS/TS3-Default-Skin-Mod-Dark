<!--
TeamSpeak 3 Server Infoframe Template (EN)
Copyright 2009-2015 (c) TeamSpeak Systems GmbH
 
The replaceable variables are embedded in "%%" like %%SERVER_NAME%%. At this time you can also use 
%%?SERVER_NAME%% (note the questionmark), which is a tiny "if"- query. Use it, to remove the whole 
line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available 
theme (e.g. "styles/bluesky/"). Be aware that this template will not automaticly be translated when 
displayed.

Replacable variables for server:
SERVER_NAME
SERVER_VERSION
SERVER_VERSION_SHORT
SERVER_PLATFORM
SERVER_CLIENTS_ONLINE
SERVER_QUERYCLIENTS_ONLINE
SERVER_CHANNELS_ONLINE
SERVER_UPTIME
SERVER_CLIENT_CONNECTIONS
SERVER_QUERY_CLIENT_CONNECTIONS
SERVER_ADDRESS
SERVER_PORT
SERVER_ICON
SERVER_LICENSE
PLUGIN_INFO_DATA
SERVER_MAXCLIENTS
SERVER_NO_RESERVED_SLOTS
SERVER_RESERVED_SLOTS
SERVER_REFRESH_INACTIVE
SERVER_REFRESH_ACTIVE
-->
<style type="text/css">
	@import url('styles/DefaultSkinModDark/style.css');
</style>

<table width="100%" class="Infoframe_table">
  <tr>
    <td class="Infoframe_server">
     %%SERVER_NAME%%
    </td>
    <td class="Infoframe_text-right">
      <img src="%%?SERVER_ICON%%" height="32" width="32" alt="Server Icon" title="Server Icon" />
    </td>
  </tr>
</table>

<hr/>

<table class="Infoframe_table">
  <tr>
    <td class="Infoframe_label">Address:</td>
    <td class="Infoframe_list">%%SERVER_ADDRESS%%
		:%%?SERVER_PORT%%
	</td>
  </tr>
  <tr title="%%SERVER_VERSION%%">
    <td class="Infoframe_label">Version: </td>
   <td class="Infoframe_list">%%SERVER_VERSION_SHORT%% in <img src="styles:/DefaultSkinModDark/imagesinfo/%%SERVER_PLATFORM%%.png" alt="" title="%%SERVER_PLATFORM%%" /></td>
  </tr>
  <tr>
    <td class="Infoframe_label">License: </td>
    <td class="Infoframe_list">%%SERVER_LICENSE%%</td>
  </tr>
  <tr>
    <td class="Infoframe_label">Uptime: </td>
    <td class="Infoframe_list">%%SERVER_UPTIME%%</td>
  </tr>
  <tr>
    <td class="Infoframe_label">Current Channels: </td>
    <td class="Infoframe_list">%%SERVER_CHANNELS_ONLINE%%</td>
  </tr>
  <tr title="Total customer connections: %%SERVER_CLIENT_CONNECTIONS%%">
    <td class="Infoframe_label">Current clients: </td>
    <td class="Infoframe_list">%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%% %%?SERVER_NO_RESERVED_SLOTS%%</td>
    <td class="Infoframe_list">%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%% (<span class="Infoframe_red">-%%?SERVER_RESERVED_SLOTS%% reserved</span>)</td>
  </tr>
  <tr title="Total ServerQuery connections: %%SERVER_QUERY_CLIENT_CONNECTIONS%%">
    <td class="Infoframe_label">Current queries: </td>
    <td class="Infoframe_list">%%SERVER_QUERYCLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%%</td>
  </tr>
 %%?PLUGIN_INFO_DATA%%
</table>

<table class="Infoframe_table">
  <tr><td class="Infoframe_space">
    <img src="iconpath:REFRESH?size=16x16" height="16" width="16" alt="">
    &nbsp;
    <a class="Infoframe_inactive" href="%%?SERVER_REFRESH_INACTIVE%%">Update</a>
    <a class="Infoframe_active" href="%%?SERVER_REFRESH_ACTIVE%%">Update</a>
  </td></tr>
</table>
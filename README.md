This is my Home Assistant Configuration for my smart home. Feel free to look around. Hope it can be helpful for those learning or wondering how to improve their own Home Assistant like I did in the beginning. Poking around others setups was really helpful to me in the start.

<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/rwarner?style=social">
Did this help? 🍕 <a href="https://www.buymeacoffee.com/rwarner">Feel free to buy me a piece of za</a> 🍕

## Current Server Hardware

[![HA version](https://img.shields.io/badge/Running%20Home%20Assistant-2023.7.1%20-darkblue)](https://github.com/home-assistant/home-assistant/releases/latest) ![Operating System](https://img.shields.io/badge/Ubuntu%20Server-20.04.6%20LTS-red) ![Python Version](https://img.shields.io/badge/Python-3.11.4-brightgreen)
 - Intel Core i5-6400 2.7 GHz Quad-Core Processor
 - ASRock H110M-ITX Mini ITX LGA1151 Motherboard
 - Crucial 8 GB DDR4
 - SanDisk 120 GB SSD
 - Cooler Master Elite 110 Mini ITX Tower Case
 - SeaSonic M12II 520W PSU


## <a name="SmartHomeEquipment">Smart Home Equipment</a>

[Networking](#Networking) | [Smart Home Hubs](#SmartHomeHubs) | [Zigbee](#Zigbee) | [Z-Wave](#ZWave) | [Lighting](#Lighting) | [Cameras / Security](#Cameras) | [Media Devices](#MediaDevices) | [Amazon Alexa](#AmazonAlexa) | [Miscellaneous](#Misc)

<hr>
 As an Amazon Associate I earn from qualifying purchases, in links below for convenience.

### <a name="Networking">Networking</a>

> [Back To Top](#SmartHomeEquipment)

<table border="0">
 
<tr>
 <th align=center colspan="2">
  Device
 </th>
 <th align=center>
  Notes
 </th>
</tr>
 
<tr>
 <td align=center>
  <a href="https://amzn.to/3suM6IF">Unifi AP AC-Pro</a>
 </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-M7bWsTt/0/5d814b33/Th/i-M7bWsTt-Th.png" alt="">
 </td>
 <td colspan="2">
    Standard Unifi Access Point, most popular one. Turn off AP LED at night, main floor.
 </td>
</tr>

<tr>
 <td align=center>
  <a href="https://amzn.to/2N3Xyuw">Unifi AP Nano HD</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-M7bWsTt/0/5d814b33/Th/i-M7bWsTt-Th.png" alt="">
 </td>
 <td colspan="2">
    Standard Unifi Access Point, more recent version. Basement office area.
 </td>
</tr>
 
 
<tr>
 <td align=center>
  <a href="https://amzn.to/2KpvjFO">Unifi AP AC-LR</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-M7bWsTt/0/5d814b33/Th/i-M7bWsTt-Th.png" alt="">
 </td>
 <td colspan="2"> 
    Entry level Unifi Access Point, to cover basement and more of the front of the house from below.
 </td>
</tr>

<tr>
 <td align=center>
  <a href="https://amzn.to/3bQe0Jd">Unifi AP AC-IW</a>
  </td>
 <td align=center>
  <img src="https://photos.smugmug.com/photos/i-582N7wF/0/7a84b10c/Th/i-582N7wF-Th.png" alt="">
 </td>
 <td colspan="2">
    Unifi Access Point for putting "in the wall" or moreso on a outlet cover. Used for Garage and Patio area access.
 </td>
</tr>

<tr>
 <td align=center>
  <a href="https://amzn.to/3szNBFk">Unifi US-24 Switch</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-FnsJQkq/0/ceaa6548/Th/i-FnsJQkq-Th.png" alt="">
 </td>
 <td colspan="2">
    Unifi's standard rack mountable switch, no POE. Connecting most equipment in the server rack.
 </td>
</tr>

<tr>
<td align=center>
 <a href="https://amzn.to/3qqAvZb">Unifi US-8-150W Switch</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-JSZ84v5/0/4a4c9fa0/Th/i-JSZ84v5-Th.png" alt="">
 </td>
 <td colspan="2">
    Larger POE switch (full 8 ports) for powering all the cameras, APs, and a flex mini amongst the house.
 </td>
</tr>

<tr>
<td align=center>
 <a href="https://amzn.to/38R3qQd">Unifi US-8-60W Switch</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-JSZ84v5/0/4a4c9fa0/Th/i-JSZ84v5-Th.png" alt="">
 </td>
 <td colspan="2">
    Smaller POE switch, for use in garage POE for cameras and Unifi AP-IW.
 </td>
</tr>

<tr>
 <td align=center>
  <a href="https://amzn.to/3sHlnc6">Unifi Flex Mini</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-KzcqQBP/0/626e14b6/Th/i-KzcqQBP-Th.png" alt="">
 </td>
 <td colspan="2">
    Unifi Switch used for my Basement Office. Powered by POE!
 </td>
</tr>
 
<tr>
 <td align=center>
  <a href="https://amzn.to/2N1nk2v">Unifi Cloudkey Gen 2+</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-sWDns64/0/9f67b8a0/Th/i-sWDns64-Th.png" alt="">
 </td>
 <td colspan="2">
    Running Unifi Network / Unifi Protect software for home network. Also provides information to Home Assistant of device tracking.
 </td>
 </tr>
 
 <tr>
 <td align=center>
  <a href="https://amzn.to/3qkpcls">Unifi USG</a> (Router)
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-VfGmnqZ/0/7fb97f77/Th/i-VfGmnqZ-Th.png" alt="">
 </td>
 <td colspan="2">
    Main router for incoming ISP, ties into Unifi system.
 </td>
 </tr>
 </table>


<!----------------- NEW SECTION ------------------>


### <a name="SmartHomeHubs">Smart Home Hubs</a>

> [Back To Top](#SmartHomeEquipment)

<table border="0">
 
<tr>
 <th align=center colspan="2">
  Device
 </th>
 <th align=center>
  Notes
 </th>
</tr>

 <tr>
 <td align=center>
  <a href="https://amzn.to/3sFd2FV">GoControl HUSBZB-1</a> (Zigbee / Z-Wave)
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-nXHDRTM/0/69c0f629/Th/i-nXHDRTM-Th.png" alt="">
 </td>
 <td colspan="2">
    Moved over to this for all direct Home Assistant Zigbee / Z-Wave needs. Everything is much faster and reliable now than using two seperate hubs outside of HA. I also favored to only use the Hue bulbs through this device through Alexa so everything is in one place.
 </td>
 </tr>

<tr>
 <td align=center>
  <a href="https://amzn.to/35NMNDd"><strike>Hue Hub</strike></a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-NptZjfL/0/a82aa60a/Th/i-NptZjfL-Th.png" alt="">
 </td>
 <td colspan="2">
    Previously used to support Hue Bulbs when first expanding my hue bulbs. Have moved to the GoControl HUSBZB-1 USB stick since the Hue Bulbs use Zigbee. They also help expand the zigbee network if they're all on the same frequency / network.
 </td>
 </tr>
 
 
<tr>
 <td align=center>
  <a href="https://www.samsung.com/us/smart-home/smartthings/hubs/samsung-smartthings-hub--2018--gp-u999sjvlgda/"><strike>Smart Things Hub</strike></a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-DQ3WH4J/0/af6c53e1/Th/i-DQ3WH4J-Th.png" alt="">
 </td>
 <td colspan="2">
    Previously used to support Z-Wave devices like the Schlage lock and Zigbee buttons. Have moved to the GoControl HUSBZB-1 USB stick.
 </td>
 </tr>
 
 
 <tr>
 <td align=center>
  <a href="https://amzn.to/38RTciF">Logitech Harmony Hub</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-Lqn8ngJ/0/6c629d6a/Th/i-Lqn8ngJ-Th.png" alt="">
 </td>
 <td colspan="2">
    Used to control most of the Home Theater equipment via IR. Used prior to any smart home stuff. Now connected thrugh Home Assistant / Alexa to start movie viewing. "Alexa turn on Projector"
 </td>
 </tr>
 
</table>


<!----------------- NEW SECTION ------------------>
### <a name="Zigbee">Zigbee</a>

> [Back To Top](#SmartHomeEquipment)

<table border="0">
 
<tr>
 <th align=center colspan="2">
  Device
 </th>
 <th align=center>
  Notes
 </th>
</tr>

 <tr>
 <td align=center>
   <a href="https://amzn.to/3bIg06l">Hue Bulbs</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-CnkcMNV/0/0f0344bd/Th/i-CnkcMNV-Th.png" alt="">
 </td>
 <td colspan="2">
    Hue Bulbs connected through Home Assistant's Zigbee connection. If anything, they help also provide the Zigbee network extend reach throughout the property.
 </td>
 </tr>
 
 
<tr>
 <td align=center>
   <a href="https://www.samsung.com/us/smart-home/smartthings/buttons/samsung-smartthings-button-gp-u999sjvleaa/">Smart Things Button</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-L57VMmM/0/27a84be3/Th/i-L57VMmM-Th.png" alt="">
 </td>
 <td colspan="2">
    Used to control lights / fan in bedroom via night stand or on the wall. Utilized via the Zigbee network through Home Assistant.
 </td>
 </tr>
 
 <tr>
 <td align=center>
  <a href="https://amzn.to/2M1ALyQ">Philips Hue Motion Sensors</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-QfwQzng/0/60fae265/Th/i-QfwQzng-Th.png" alt="">
 </td>
 <td colspan="2">
    Alerts for motion when not home, or other automations for movement / motion / occupancy. Utilized via the Zigbee network in Home Assistant.
 </td>
</tr>


</table>

<!----------------- NEW SECTION ------------------>
### <a name="ZWave">Z-Wave</a>

> [Back To Top](#SmartHomeEquipment)

<table border="0">
 
<tr>
 <th align=center colspan="2">
  Device
 </th>
 <th align=center>
  Notes
 </th>
</tr>

 <tr>
 <td align=center>
   <a href="https://amzn.to/3syKk9y">Schlage Touchscreen Deadbolt</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-MBFvjwc/0/8c5f3c3c/Th/i-MBFvjwc-Th.png" alt="">
 </td>
 <td colspan="2">
    Lock for doors using the Z-Wave connection with Home Assistant.
 </td>
 </tr>
 
<tr>
 <td align=center>
  <a href="https://amzn.to/38QF7lx">Leviton Decora Smart Dimmer</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-bJr5xkt/0/56cfd1d8/Th/i-bJr5xkt-Th.png" alt="">
 </td>
 <td colspan="2">
    Light switch dimmers used via the Z-Wave network through Home Assistant. Places where Hue bulbs didn't make sense.
 </td>
</tr>
 
</table>

<!----------------- NEW SECTION ------------------>
### <a name="Lighting">Lighting</a>

> [Back To Top](#SmartHomeEquipment)

<table border="0">
 
<tr>
 <th align=center colspan="2">
  Device
 </th>
 <th align=center>
  Notes
 </th>
</tr>

 <tr>
 <td align=center>
   <a href="https://amzn.to/3bIg06l">Hue Bulbs</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-CnkcMNV/0/0f0344bd/Th/i-CnkcMNV-Th.png" alt="">
 </td>
 <td colspan="2">
    Lightbulbs used in the Zigbee network through Home Assistant.
 </td>
 </tr>
 
<tr>
 <td align=center>
  <a href="https://amzn.to/2XKSLQH">D1 Mini (ESP 8266)</a> w/ <a href="https://amzn.to/3ij9Xq9">LED Strip</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-CN8SjRb/0/63ac9b79/Th/i-CN8SjRb-Th.png" alt="">
 </td>
 <td colspan="2">
    Uplighting in certain areas for super cheap manually created. Utilized with the ESPHome integration in Home Assistant via WiFi.
 </td>
</tr>
 
</table>

<!----------------- NEW SECTION ------------------>
### <a name="Cameras">Cameras / Security / Motion Sensors</a>

> [Back To Top](#SmartHomeEquipment)

<table border="0">
 
<tr>
 <th align=center colspan="2">
  Device
 </th>
 <th align=center>
  Notes
 </th>
</tr>

 <tr>
 <td align=center>
  <a href="https://amzn.to/3syKk9y">Schlage Touchscreen Deadbolt</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-MBFvjwc/0/8c5f3c3c/Th/i-MBFvjwc-Th.png" alt="">
 </td>
 <td colspan="2">
    Lock for doors using the Z-Wave connection with Home Assistant.
 </td>
 </tr>
 
<tr>
 <td align=center>
  <a href="https://amzn.to/35Onqkz">Unifi G3 Flex</a> (Camera)
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-mZL5Pcz/0/f5972dd3/Th/i-mZL5Pcz-Th.png" alt="">
 </td>
 <td colspan="2">
    Cameras mounted around the house using the Unifi Protect software. Sensors connected to Home Assistant via the Unifi Protect integraton.
 </td>
</tr>

<tr>
 <td align=center>
  <a href="https://amzn.to/2NdK4fZ">Unifi G3</a> (Camera)
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-SCqSG9M/0/24d856a4/Th/i-SCqSG9M-Th.png" alt="">
 </td>
 <td colspan="2">
    Cameras mounted around the house using the Unifi Protect software. Sensors connected to Home Assistant via the Unifi Protect integraton.
 </td>
</tr>

<tr>
 <td align=center>
  <a href="https://amzn.to/35MHOmk">Unifi G4 Doorbell</a> (Camera / Doorbell)
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-5WhmStx/0/65773123/Th/i-5WhmStx-Th.png" alt="">
 </td>
 <td colspan="2">
    Provides live view for front door and alerts for doorbell ringing. Using the Unifi Protect software. Sensors connected to Home Assistant via the Unifi Protect integraton.
 </td>
</tr>

<tr>
 <td align=center>
  <a href="https://amzn.to/39TNSe7">Amazon Alexa</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-9gRfWC3/0/f25baa0d/Th/i-9gRfWC3-Th.png" alt="">
 </td>
 <td colspan="2">
    Amazon Alexa provides a "Guard Mode" that is utilized for security. Improved on Alexa side independantly. Enable / disabled via Home Assistant.
 </td>
</tr>

<tr>
 <td align=center>
   <a href="https://www.samsung.com/us/smart-home/smartthings/sensors/samsung-smartthings-motion-sensor-2018-gp-u999sjvlbaa/">Smart Things Motion Sensors</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-7jw7dL2/0/907adef7/Th/i-7jw7dL2-Th.png" alt="">
 </td>
 <td colspan="2">
    Used for turning on / off Tablet in Kitchen as well as alerts for motion when not home. Connected through Zigbee network in Home Assistant.
 </td>
</tr>

<tr>
 <td align=center>
  <a href="https://amzn.to/39GXisX">Ecobee Smart Sensors</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-MPTWjNM/0/3a501917/Th/i-MPTWjNM-Th.png" alt="">
 </td>
 <td colspan="2">
    Alerts for motion when not home, or other automations for movement / motion / occupancy. Connected through Ecobee integreation in Home Assistant.
 </td>
</tr>

<tr>
 <td align=center>
  <a href="https://amzn.to/2M1ALyQ">Philips Hue Motion Sensors</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-QfwQzng/0/60fae265/Th/i-QfwQzng-Th.png" alt="">
 </td>
 <td colspan="2">
    Alerts for motion when not home, or other automations for movement / motion / occupancy. Connected through Zigbee network in Home Assistant.
 </td>
</tr>
 
</table>

<!----------------- NEW SECTION ------------------>

### <a name="MediaDevices">Media Devices</a>

> [Back To Top](#SmartHomeEquipment)

<table border="0">
 
<tr>
 <th align=center colspan="2">
  Device
 </th>
 <th align=center>
  Notes
 </th>
</tr>

<tr>
 <td align=center>
  <a href="https://amzn.to/2XJZJWm">Fire TV Sticks</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-RvVnMSQ/0/370efbac/Th/i-RvVnMSQ-Th.png" alt="">
 </td>
 <td colspan="2">
    Main source of entertainment. Can sort of detect if something is playing depending on the application. TBD if I'll integrate more sensors with ADB on the devices over the network.
 </td>
</tr>
 
<tr>
 <td align=center>
  <a href="https://amzn.to/2LS9WNH">Nvidia Shield TV</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-MxMJVjR/0/a87256ef/Th/i-MxMJVjR-Th.png" alt="">
 </td>
 <td colspan="2">
    Main source of movie viewing in backroom.
 </td>
</tr>


<tr>
 <td align=center>
  <a href="https://store.google.com/us/product/chromecast">Google Chromecast</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-m2bdb7D/0/67336f56/Th/i-m2bdb7D-Th.png" alt="">
 </td>
 <td colspan="2">
    One or two around if needed, not used with Home Assistant at all.
 </td>
</tr>


<tr>
 <td align=center>
  <a href="https://amzn.to/39TNSe7">Amazon Alexa</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-9gRfWC3/0/f25baa0d/Th/i-9gRfWC3-Th.png" alt="">
 </td>
 <td colspan="2">
    TTS output from Alexa Media Skill on Home Assistant around the house.
 </td>
</tr>

 
</table>

<!----------------- NEW SECTION ------------------>

### <a name="AmazonAlexa">Amazon Alexa</a>

> [Back To Top](#SmartHomeEquipment)

<table border="0">
 
<tr>
 <th align=center colspan="2">
  Device
 </th>
 <th align=center>
  Notes
 </th>
</tr>

<tr>
 <td align=center>
  <a href="https://amzn.to/39TNSe7">Amazon Echo Dots</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-9gRfWC3/0/f25baa0d/Th/i-9gRfWC3-Th.png" alt="">
 </td>
 <td colspan="2">
    TTS output from Alexa Media Skill on Home Assistant around the house.
 </td>
</tr>
 
<tr>
 <td align=center>
  <a href="https://en.wikipedia.org/wiki/Amazon_Echo">Amazon Echo (Original)</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-DjnrKgw/0/11310b55/Th/i-DjnrKgw-Th.png" alt="">
 </td>
 <td colspan="2">
    TTS output from Alexa Media Skill on Home Assistant.
 </td>
</tr>

<tr>
 <td align=center>
  <a href="https://amzn.to/38SxjQ4">Amazon Echo Show 5"</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-f32ps2j/0/dd49d737/Th/i-f32ps2j-Th.png" alt="">
 </td>
 <td colspan="2">
    Kitchen, use solely for timers and kitchen related things. Slideshow of pictures. TTS output from Alexa Media Skill on Home Assistant.
 </td>
</tr>

 
</table>


<!----------------- NEW SECTION ------------------>
### <a name="Misc">Miscellaneous</a>

> [Back To Top](#SmartHomeEquipment)

<table border="0">
 
<tr>
 <th align=center colspan="2">
  Device
 </th>
 <th align=center>
  Notes
 </th>
</tr>

<tr>
 <td align=center>
  <a href="https://amzn.to/2KmX2XH">Broadlink RM4 Mini</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-94rrkHz/0/8403be87/Th/i-94rrkHz-Th.png" alt="">
 </td>
 <td colspan="2">
    Provides IR in the living room and other areas where the Pioneer Mini Splits live. These can also be used to control ANY IR device. I also use Smart IR (HACS) to control a few things like the Living Room TV power.
 </td>
</tr>


<tr>
 <td align=center>
  <a href="https://www.lg.com/us/washers/lg-WM3700HWA-front-load-washer">LG Washer</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-ZjHKJgZ/0/5e050d27/Th/i-ZjHKJgZ-Th.png" alt="">
 </td>
 <td colspan="2">
    Standard Washer in the basement, used via the LG ThinQ skill (HACS) and/or the LG ThinQ Skill on Alexa, or the Android App.
 </td>
</tr>

<tr>
 <td align=center>
  <a href="https://www.pioneerminisplit.com/">Pioneer Mini Split Units</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-4ZzfKTW/0/80793255/Th/i-4ZzfKTW-Th.png" alt="">
 </td>
 <td colspan="2">
    Providing AC to three seperate areas in the house. These are controlled via the Broadlink RM4 Mini, via Infrared (IR) through Hass.
 </td>
</tr>

<tr>
 <td align=center>
  <a href="https://amzn.to/35N6TNL">Ecobee 4</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-s23qcMx/0/1a5fc17d/Th/i-s23qcMx-Th.png" alt="">
 </td>
 <td colspan="2">
    Temperature control / thermostat via WiFi, through Home Assistant Ecobee integration.
 </td>
</tr>

<tr>
 <td align=center>
  <a href="https://amzn.to/35LfrVm">Ecobee 3 Lite</a>
  </td>
 <td align=center>
    <img src="https://photos.smugmug.com/photos/i-gDRfBsZ/0/2a5503ff/Th/i-gDRfBsZ-Th.png" alt="">
 </td>
 <td colspan="2">
    Temperature control / thermostat via WiFi, through Home Assistant Ecobee integration.
 </td>
</tr>

</table>


<!----------------- NEW SECTION ------------------>

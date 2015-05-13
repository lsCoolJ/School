#!/usr/bin/perl -w
# getArduino.pl
#
# Based on Original Perl code by Paul Mutton.
# See http://www.jibble.org/currentcost/
# which was then Updated for CC128 by Mark E Taylor. April 2009.
# http://metphoto.homeunix.net/met_current/
# http://metphoto.net
#Adapted to read the USB serial port on an Arduino Nano clone
# by Tardus, November 2013, http://tardus.net

use strict;
use Device::SerialPort qw( :PARAM :STAT 0.07 );
my $PORT = "/dev/ttyACM0";
my $ob = Device::SerialPort->new($PORT);
$ob->baudrate(115200); # default speed for Arduino serial over USB
    #$ob->databits(8);
    #$ob->parity("none");
    #$ob->stopbits(1);
    $ob->write_settings;
open(SERIAL, "+>$PORT");
while (my $line = <SERIAL>) {
    open (DATFILE, '>>arduino.dat');
    print DATFILE  "$line" ;
    close (DATFILE);
}
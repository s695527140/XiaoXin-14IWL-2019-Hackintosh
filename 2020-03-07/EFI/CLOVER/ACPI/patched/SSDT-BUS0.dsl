DefinitionBlock ("", "SSDT", 2, "ACDT", "BUS0", 0)
{
    External (_SB_.PCI0.SBUS, DeviceObj)
    Scope (_SB.PCI0.SBUS)
    {
        Device (BUS0)
        {
            Name (_CID, "smbus")
            Name (_ADR, Zero)
            Method (_STA, 0, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}
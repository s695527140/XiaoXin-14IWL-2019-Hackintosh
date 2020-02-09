// Rename  : _Q11 to XQ11
// Find    : 5F513131
// Replace : 58513131

// Rename  : _Q12 to XQ12
// Find    : 5F513132
// Replace : 58513132

DefinitionBlock("", "SSDT", 2, "ACDT", "BKEY", 0)
{
    External (_SB.PCI0.LPCB.PS2K, DeviceObj)
    External (_SB.PCI0.LPCB.EC0, DeviceObj)
    External (_SB.PCI0.LPCB.EC0.XQ11, MethodObj)
    External (_SB.PCI0.LPCB.EC0.XQ12, MethodObj)
    Scope (_SB.PCI0.LPCB.EC0)
    {
        Method (_Q11, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Notify(\_SB.PCI0.LPCB.PS2K, 0x0405)
                Notify(\_SB.PCI0.LPCB.PS2K, 0x20)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ11()
            }
        }    
        Method (_Q12, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Notify(\_SB.PCI0.LPCB.PS2K, 0x0406)
                Notify(\_SB.PCI0.LPCB.PS2K, 0x10)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ12()
            }
        }
    }
}
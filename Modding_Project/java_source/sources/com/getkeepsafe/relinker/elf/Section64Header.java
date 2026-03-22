package com.getkeepsafe.relinker.elf;

import com.getkeepsafe.relinker.elf.Elf;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class Section64Header extends Elf.SectionHeader {
    public Section64Header(ElfParser elfParser, Elf.Header header, int i) throws IOException {
        ByteOrder byteOrder;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        if (header.f7519Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        allocate.order(byteOrder);
        this.f7524Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkk(allocate, header.f7516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + (i * header.f7513Wwwwwwwwwwwwwwwwwwwwwwwwwwww) + 44);
    }
}

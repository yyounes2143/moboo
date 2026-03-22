package com.getkeepsafe.relinker.elf;

import com.getkeepsafe.relinker.elf.Elf;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class Program32Header extends Elf.ProgramHeader {
    public Program32Header(ElfParser elfParser, Elf.Header header, long j) throws IOException {
        ByteOrder byteOrder;
        ByteBuffer allocate = ByteBuffer.allocate(4);
        if (header.f7519Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        allocate.order(byteOrder);
        long j2 = header.f7517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + (j * header.f7515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f7523Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkk(allocate, j2);
        this.f7522Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkk(allocate, 4 + j2);
        this.f7521Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkk(allocate, 8 + j2);
        this.f7520Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkk(allocate, j2 + 20);
    }
}

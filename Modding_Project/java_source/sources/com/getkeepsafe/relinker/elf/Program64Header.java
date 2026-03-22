package com.getkeepsafe.relinker.elf;

import com.getkeepsafe.relinker.elf.Elf;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class Program64Header extends Elf.ProgramHeader {
    public Program64Header(ElfParser elfParser, Elf.Header header, long j) throws IOException {
        ByteOrder byteOrder;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        if (header.f7519Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        allocate.order(byteOrder);
        long j2 = header.f7517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + (j * header.f7515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f7523Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkk(allocate, j2);
        this.f7522Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkkkk(allocate, 8 + j2);
        this.f7521Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkkkk(allocate, 16 + j2);
        this.f7520Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkkkk(allocate, j2 + 40);
    }
}

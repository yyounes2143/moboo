package com.getkeepsafe.relinker.elf;

import com.getkeepsafe.relinker.elf.Elf;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class Dynamic64Structure extends Elf.DynamicStructure {
    public Dynamic64Structure(ElfParser elfParser, Elf.Header header, long j, int i) throws IOException {
        ByteOrder byteOrder;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        if (header.f7519Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        allocate.order(byteOrder);
        long j2 = j + (i * 16);
        this.f7510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkkkk(allocate, j2);
        this.f7509Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkkkk(allocate, j2 + 8);
    }
}

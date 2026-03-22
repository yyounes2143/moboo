package com.getkeepsafe.relinker.elf;

import com.getkeepsafe.relinker.elf.Elf;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class Elf64Header extends Elf.Header {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ElfParser f7526Wwwwwwwwwwwwwwwwwwwwwwwww;

    public Elf64Header(boolean z, ElfParser elfParser) throws IOException {
        ByteOrder byteOrder;
        this.f7519Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f7526Wwwwwwwwwwwwwwwwwwwwwwwww = elfParser;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        if (z) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        allocate.order(byteOrder);
        this.f7518Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkkkkk(allocate, 16L);
        this.f7517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkkkk(allocate, 32L);
        this.f7516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkkkk(allocate, 40L);
        this.f7515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkkkkk(allocate, 54L);
        this.f7514Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkkkkk(allocate, 56L);
        this.f7513Wwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkkkkk(allocate, 58L);
        this.f7512Wwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkkkkk(allocate, 60L);
        this.f7511Wwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkkkkk(allocate, 62L);
    }

    @Override // com.getkeepsafe.relinker.elf.Elf.Header
    public Elf.SectionHeader Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) throws IOException {
        return new Section64Header(this.f7526Wwwwwwwwwwwwwwwwwwwwwwwww, this, i);
    }

    @Override // com.getkeepsafe.relinker.elf.Elf.Header
    public Elf.ProgramHeader Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) throws IOException {
        return new Program64Header(this.f7526Wwwwwwwwwwwwwwwwwwwwwwwww, this, j);
    }

    @Override // com.getkeepsafe.relinker.elf.Elf.Header
    public Elf.DynamicStructure Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, int i) throws IOException {
        return new Dynamic64Structure(this.f7526Wwwwwwwwwwwwwwwwwwwwwwwww, this, j, i);
    }
}

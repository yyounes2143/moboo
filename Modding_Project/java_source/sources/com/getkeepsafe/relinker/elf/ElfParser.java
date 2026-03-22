package com.getkeepsafe.relinker.elf;

import com.getkeepsafe.relinker.elf.Elf;
import io.flutter.embedding.android.KeyboardMap;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.UShort;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class ElfParser implements Closeable, Elf, AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FileChannel f7527Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7528Wwwwwwwwwwwwwwwwwwwwwwwww = 1179403647;

    public ElfParser(File file) throws FileNotFoundException {
        if (file != null && file.exists()) {
            this.f7527Wwwwwwwwwwwwwwwwwwwwwwww = new FileInputStream(file).getChannel();
            return;
        }
        throw new IllegalArgumentException("File is null or does not exist");
    }

    public long Kkkkkkkkkkkkkkkkkk(ByteBuffer byteBuffer, long j) throws IOException {
        Kkkkkkkkkkkkkkkkkkkkkkk(byteBuffer, j, 4);
        return byteBuffer.getInt() & KeyboardMap.kValueMask;
    }

    public String Kkkkkkkkkkkkkkkkkkk(ByteBuffer byteBuffer, long j) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            long j2 = 1 + j;
            short Kkkkkkkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkkkkkkk(byteBuffer, j);
            if (Kkkkkkkkkkkkkkkkkkkkkk2 != 0) {
                sb.append((char) Kkkkkkkkkkkkkkkkkkkkkk2);
                j = j2;
            } else {
                return sb.toString();
            }
        }
    }

    public long Kkkkkkkkkkkkkkkkkkkk(ByteBuffer byteBuffer, long j) throws IOException {
        Kkkkkkkkkkkkkkkkkkkkkkk(byteBuffer, j, 8);
        return byteBuffer.getLong();
    }

    public int Kkkkkkkkkkkkkkkkkkkkk(ByteBuffer byteBuffer, long j) throws IOException {
        Kkkkkkkkkkkkkkkkkkkkkkk(byteBuffer, j, 2);
        return byteBuffer.getShort() & UShort.MAX_VALUE;
    }

    public short Kkkkkkkkkkkkkkkkkkkkkk(ByteBuffer byteBuffer, long j) throws IOException {
        Kkkkkkkkkkkkkkkkkkkkkkk(byteBuffer, j, 1);
        return (short) (byteBuffer.get() & 255);
    }

    public void Kkkkkkkkkkkkkkkkkkkkkkk(ByteBuffer byteBuffer, long j, int i) throws IOException {
        byteBuffer.position(0);
        byteBuffer.limit(i);
        long j2 = 0;
        while (j2 < i) {
            int read = this.f7527Wwwwwwwwwwwwwwwwwwwwwwww.read(byteBuffer, j + j2);
            if (read != -1) {
                j2 += read;
            } else {
                throw new EOFException();
            }
        }
        byteBuffer.position(0);
    }

    public List<String> Wwwwwwwwwwwwww() throws IOException {
        ByteOrder byteOrder;
        long j;
        this.f7527Wwwwwwwwwwwwwwwwwwwwwwww.position(0L);
        ArrayList arrayList = new ArrayList();
        Elf.Header Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        ByteBuffer allocate = ByteBuffer.allocate(8);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2.f7519Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        allocate.order(byteOrder);
        long j2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww2.f7514Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (j2 == 65535) {
            j2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0).f7524Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        long j3 = 0;
        while (true) {
            if (j3 < j2) {
                Elf.ProgramHeader Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j3);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f7523Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 2) {
                    j = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f7522Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    break;
                }
                j3++;
            } else {
                j = 0;
                break;
            }
        }
        if (j == 0) {
            return Collections.unmodifiableList(arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        long j4 = 0;
        int i = 0;
        while (true) {
            Elf.DynamicStructure Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, i);
            long j5 = j;
            long j6 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f7510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (j6 == 1) {
                arrayList2.add(Long.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f7509Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
            } else if (j6 == 5) {
                j4 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f7509Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            i++;
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f7510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 0) {
                break;
            }
            j = j5;
            j2 = j2;
        }
        if (j4 != 0) {
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwww2, j2, j4);
            int size = arrayList2.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList2.get(i2);
                i2++;
                arrayList.add(Kkkkkkkkkkkkkkkkkkk(allocate, ((Long) obj).longValue() + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3));
            }
            return arrayList;
        }
        throw new IllegalStateException("String table offset not found!");
    }

    public Elf.Header Wwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        boolean z;
        this.f7527Wwwwwwwwwwwwwwwwwwwwwwww.position(0L);
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        if (Kkkkkkkkkkkkkkkkkk(allocate, 0L) == 1179403647) {
            short Kkkkkkkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkkkkkkk(allocate, 4L);
            if (Kkkkkkkkkkkkkkkkkkkkkk(allocate, 5L) == 2) {
                z = true;
            } else {
                z = false;
            }
            if (Kkkkkkkkkkkkkkkkkkkkkk2 == 1) {
                return new Elf32Header(z, this);
            }
            if (Kkkkkkkkkkkkkkkkkkkkkk2 == 2) {
                return new Elf64Header(z, this);
            }
            throw new IllegalStateException("Invalid class type!");
        }
        throw new IllegalArgumentException("Invalid ELF Magic!");
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Elf.Header header, long j, long j2) throws IOException {
        for (long j3 = 0; j3 < j; j3++) {
            Elf.ProgramHeader Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = header.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j3);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f7523Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 1) {
                long j4 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f7521Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (j4 <= j2 && j2 <= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f7520Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + j4) {
                    return (j2 - j4) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f7522Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                }
            }
        }
        throw new IllegalStateException("Could not map vma to file offset!");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f7527Wwwwwwwwwwwwwwwwwwwwwwww.close();
    }
}

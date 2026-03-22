package com.mbridge.msdk.foundation.tools;

import com.google.common.primitives.SignedBytes;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import io.flutter.embedding.android.KeyboardMap;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class FastKV {
    static final int ASYNC_BLOCKING = 1;
    private static final String A_SUFFIX = ".kva";
    private static final int BASE_GC_BYTES_THRESHOLD = 4096;
    private static final int BASE_GC_KEYS_THRESHOLD = 80;
    private static final String BOTH_FILES_ERROR = "both files error";
    private static final String B_SUFFIX = ".kvb";
    private static final String C_SUFFIX = ".kvc";
    private static final int DATA_SIZE_LIMIT = 536870912;
    private static final int DATA_START = 12;
    private static final int DOUBLE_LIMIT;
    private static final byte[] EMPTY_ARRAY = new byte[0];
    static final String GC_FINISH = "gc finish";
    private static final int INTERNAL_LIMIT = 2048;
    private static final String MAP_FAILED = "map failed";
    static final int NON_BLOCKING = 0;
    private static final String OPEN_FILE_FAILED = "open file failed";
    private static final int PAGE_SIZE;
    private static final String PARSE_DATA_FAILED = "parse dara failed";
    static final int SYNC_BLOCKING = 2;
    private static final String TEMP_SUFFIX = ".tmp";
    static final String TRUNCATE_FINISH = "truncate finish";
    private static final int TRUNCATE_THRESHOLD;
    private static final int[] TYPE_SIZE;
    private MappedByteBuffer aBuffer;
    private FileChannel aChannel;
    private MappedByteBuffer bBuffer;
    private FileChannel bChannel;
    private long checksum;
    private int dataEnd;
    private final Map<String, b> encoderMap;
    private z fastBuffer;
    private int invalidBytes;
    private final String name;
    private final String path;
    private int removeStart;
    private boolean sizeChanged;
    private String tempExternalName;
    private int updateSize;
    private int updateStart;
    private int writingMode;
    private final Map<String, h> data = new HashMap();
    private final Executor executor = new c0();
    private final ArrayList<d> invalids = new ArrayList<>();
    private final c logger = a0.b;
    private boolean autoCommit = true;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class Builder {
        private static final Map<String, FastKV> INSTANCE_MAP = new ConcurrentHashMap();
        private b[] encoders;
        private final String name;
        private final String path;
        private int writingMode = 0;

        public Builder(String str, String str2) {
            if (str != null && !str.isEmpty()) {
                if (str2 != null && !str2.isEmpty()) {
                    if (!str.endsWith("/")) {
                        str = str + '/';
                    }
                    this.path = str;
                    this.name = str2;
                    return;
                }
                throw new IllegalArgumentException("name is empty");
            }
            throw new IllegalArgumentException("path is empty");
        }

        public Builder asyncBlocking() {
            this.writingMode = 1;
            return this;
        }

        public Builder blocking() {
            this.writingMode = 2;
            return this;
        }

        public FastKV build() {
            FastKV fastKV;
            String str = this.path + this.name;
            Map<String, FastKV> map = INSTANCE_MAP;
            FastKV fastKV2 = map.get(str);
            if (fastKV2 == null) {
                synchronized (Builder.class) {
                    try {
                        fastKV = map.get(str);
                        if (fastKV == null) {
                            fastKV = new FastKV(this.path, this.name, this.encoders, this.writingMode);
                            map.put(str, fastKV);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return fastKV;
            }
            return fastKV2;
        }

        public Builder encoder(b[] bVarArr) {
            this.encoders = bVarArr;
            return this;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FastKV.this.writeToCFile();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public interface b<T> {
        T a(byte[] bArr, int i, int i2);

        String a();

        byte[] a(T t);
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public interface c {
        void a(String str, Exception exc);

        void a(String str, String str2);

        void b(String str, Exception exc);
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class d implements Comparable<d> {

        /* renamed from: a  reason: collision with root package name */
        int f9077a;
        int b;

        public d(int i, int i2) {
            this.b = i;
            this.f9077a = i2;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(d dVar) {
            return this.b - dVar.b;
        }
    }

    static {
        int a2 = a1.a();
        PAGE_SIZE = a2;
        int max = Math.max(a2 << 1, 16384);
        DOUBLE_LIMIT = max;
        TRUNCATE_THRESHOLD = max << 1;
        TYPE_SIZE = new int[]{0, 1, 4, 4, 8, 8};
    }

    public FastKV(String str, String str2, b[] bVarArr, int i) {
        this.path = str;
        this.name = str2;
        this.writingMode = i;
        HashMap hashMap = new HashMap();
        x0 x0Var = x0.f9122a;
        hashMap.put(x0Var.a(), x0Var);
        if (bVarArr != null && bVarArr.length > 0) {
            for (b bVar : bVarArr) {
                String a2 = bVar.a();
                if (hashMap.containsKey(a2)) {
                    error("duplicate encoder tag:" + a2);
                } else {
                    hashMap.put(a2, bVar);
                }
            }
        }
        this.encoderMap = hashMap;
        loadData();
    }

    private void addObject(String str, Object obj, byte[] bArr, byte b2) {
        boolean z;
        String str2;
        int length;
        h nVar;
        int saveArray = saveArray(str, bArr, b2);
        if (saveArray != 0) {
            String str3 = this.tempExternalName;
            if (str3 != null) {
                z = true;
            } else {
                z = false;
            }
            boolean z2 = z;
            if (z2) {
                this.tempExternalName = null;
                length = 32;
                str2 = str3;
            } else {
                str2 = obj;
                length = bArr.length;
            }
            if (b2 == 6) {
                nVar = new o(this.updateStart, saveArray, (String) str2, length, z2);
            } else if (b2 == 7) {
                nVar = new g(this.updateStart, saveArray, str2, length, z2);
            } else {
                nVar = new n(this.updateStart, saveArray, str2, length, z2);
            }
            this.data.put(str, nVar);
            updateChange();
        }
    }

    private void addOrUpdate(String str, Object obj, byte[] bArr, p pVar, byte b2) {
        if (pVar == null) {
            addObject(str, obj, bArr, b2);
        } else if (!pVar.b && pVar.e == bArr.length) {
            updateBytes(pVar.f9102a, bArr);
            pVar.d = obj;
        } else {
            updateObject(str, obj, bArr, pVar);
        }
        checkIfCommit();
    }

    private int bytesThreshold() {
        int i = this.dataEnd;
        if (i <= 16384) {
            return 4096;
        }
        if (i > 65536) {
            return 16384;
        }
        return 8192;
    }

    private void checkGC() {
        int i;
        if (this.invalidBytes < (bytesThreshold() << 1)) {
            int size = this.invalids.size();
            if (this.dataEnd < 16384) {
                i = 80;
            } else {
                i = 160;
            }
            if (size < i) {
                return;
            }
        }
        gc(0);
    }

    private void checkIfCommit() {
        if (this.writingMode != 0 && this.autoCommit) {
            commitToCFile();
        }
    }

    private void checkKey(String str) {
        if (str != null && !str.isEmpty()) {
            return;
        }
        throw new IllegalArgumentException("key is empty");
    }

    private void checkKeySize(int i) {
        if (i <= 255) {
            return;
        }
        throw new IllegalArgumentException("key's length must less than 256");
    }

    private void checkValueSize(int i, boolean z) {
        if (z) {
            if (i != 32) {
                throw new IllegalStateException("name size not match");
            }
        } else if (i >= 0 && i < 2048) {
        } else {
            throw new IllegalStateException("value size out of bound");
        }
    }

    private void clearData() {
        this.dataEnd = 12;
        this.checksum = 0L;
        clearInvalid();
        this.data.clear();
        z zVar = this.fastBuffer;
        if (zVar != null && zVar.f9123a.length == PAGE_SIZE) {
            zVar.b(0, 0);
            this.fastBuffer.a(4, 0L);
            return;
        }
        this.fastBuffer = new z(PAGE_SIZE);
    }

    private void clearInvalid() {
        this.invalidBytes = 0;
        this.invalids.clear();
    }

    private boolean commitToCFile() {
        int i = this.writingMode;
        if (i == 1) {
            this.executor.execute(new a());
        } else if (i == 2) {
            return writeToCFile();
        }
        return true;
    }

    private void copyBuffer(MappedByteBuffer mappedByteBuffer, MappedByteBuffer mappedByteBuffer2, int i) {
        FileChannel fileChannel;
        if (mappedByteBuffer.capacity() != mappedByteBuffer2.capacity()) {
            try {
                if (mappedByteBuffer2 == this.bBuffer) {
                    fileChannel = this.bChannel;
                } else {
                    fileChannel = this.aChannel;
                }
                MappedByteBuffer map = fileChannel.map(FileChannel.MapMode.READ_WRITE, 0L, mappedByteBuffer.capacity());
                map.order(ByteOrder.LITTLE_ENDIAN);
                if (mappedByteBuffer2 == this.bBuffer) {
                    this.bBuffer = map;
                } else {
                    this.aBuffer = map;
                }
                mappedByteBuffer2 = map;
            } catch (IOException e) {
                error(e);
                toBlockingMode();
                return;
            }
        }
        mappedByteBuffer.rewind();
        mappedByteBuffer2.rewind();
        mappedByteBuffer.limit(i);
        mappedByteBuffer2.put(mappedByteBuffer);
        mappedByteBuffer.limit(mappedByteBuffer.capacity());
    }

    private void countInvalid(int i, int i2) {
        this.invalidBytes += i2 - i;
        this.invalids.add(new d(i, i2));
    }

    private void deleteCFiles() {
        try {
            String str = this.path;
            a1.a(new File(str, this.name + C_SUFFIX));
            String str2 = this.path;
            a1.a(new File(str2, this.name + TEMP_SUFFIX));
        } catch (Exception e) {
            error(e);
        }
    }

    private void ensureSize(int i) {
        int length = this.fastBuffer.f9123a.length;
        int i2 = this.dataEnd + i;
        if (i2 >= length) {
            int i3 = this.invalidBytes;
            if (i3 > i && i3 > bytesThreshold()) {
                gc(i);
                return;
            }
            int newCapacity = getNewCapacity(length, i2);
            byte[] bArr = new byte[newCapacity];
            System.arraycopy(this.fastBuffer.f9123a, 0, bArr, 0, this.dataEnd);
            this.fastBuffer.f9123a = bArr;
            if (this.writingMode == 0) {
                try {
                    FileChannel fileChannel = this.aChannel;
                    FileChannel.MapMode mapMode = FileChannel.MapMode.READ_WRITE;
                    long j = newCapacity;
                    MappedByteBuffer map = fileChannel.map(mapMode, 0L, j);
                    this.aBuffer = map;
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    map.order(byteOrder);
                    MappedByteBuffer map2 = this.bChannel.map(mapMode, 0L, j);
                    this.bBuffer = map2;
                    map2.order(byteOrder);
                } catch (IOException e) {
                    error(new Exception(MAP_FAILED, e));
                    this.fastBuffer.b(0, this.dataEnd - 12);
                    this.fastBuffer.a(4, this.checksum);
                    toBlockingMode();
                }
            }
        }
    }

    private void error(Exception exc) {
        c cVar = this.logger;
        if (cVar != null) {
            cVar.b(this.name, exc);
        }
    }

    private void fastPutString(String str, String str2, o oVar) {
        int b2 = z.b(str2);
        if (oVar == null) {
            int b3 = z.b(str);
            checkKeySize(b3);
            int i = b3 + 4;
            this.updateSize = i + b2;
            preparePutBytes();
            this.fastBuffer.a((byte) 6);
            putKey(str, b3);
            putStringValue(str2, b2);
            Map<String, h> map = this.data;
            int i2 = this.updateStart;
            map.put(str, new o(i2, i + i2, str2, b2, false));
            updateChange();
        } else {
            int i3 = oVar.f9102a;
            int i4 = i3 - oVar.c;
            int i5 = oVar.e;
            boolean z = false;
            String str3 = null;
            if (i5 == b2) {
                this.checksum = this.fastBuffer.a(i3, i5) ^ this.checksum;
                if (b2 == str2.length()) {
                    str2.getBytes(0, b2, this.fastBuffer.f9123a, oVar.f9102a);
                } else {
                    z zVar = this.fastBuffer;
                    zVar.b = oVar.f9102a;
                    zVar.c(str2);
                }
                this.updateStart = oVar.f9102a;
                this.updateSize = b2;
            } else {
                this.updateSize = i4 + b2;
                preparePutBytes();
                this.fastBuffer.a((byte) 6);
                int i6 = i4 - 3;
                z zVar2 = this.fastBuffer;
                byte[] bArr = zVar2.f9123a;
                System.arraycopy(bArr, oVar.c + 1, bArr, zVar2.b, i6);
                this.fastBuffer.b += i6;
                putStringValue(str2, b2);
                remove((byte) 6, oVar.c, oVar.f9102a + oVar.e);
                if (oVar.b) {
                    str3 = (String) oVar.d;
                }
                oVar.b = false;
                int i7 = this.updateStart;
                oVar.c = i7;
                oVar.f9102a = i7 + i4;
                oVar.e = b2;
                z = true;
            }
            oVar.d = str2;
            updateChange();
            if (z) {
                checkGC();
            }
            if (str3 != null) {
                a1.a(new File(this.path + this.name, str3));
            }
        }
        checkIfCommit();
    }

    private byte[] getArrayFromFile(g gVar) {
        try {
            byte[] c2 = a1.c(new File(this.path + this.name, (String) gVar.d));
            if (c2 != null) {
                return c2;
            }
            return EMPTY_ARRAY;
        } catch (Exception e) {
            error(e);
            return EMPTY_ARRAY;
        }
    }

    private int getNewCapacity(int i, int i2) {
        if (i2 <= 536870912) {
            int i3 = PAGE_SIZE;
            if (i2 <= i3) {
                return i3;
            }
            while (i < i2) {
                int i4 = DOUBLE_LIMIT;
                if (i <= i4) {
                    i <<= 1;
                } else {
                    i += i4;
                }
            }
            return i;
        }
        throw new IllegalStateException("data size out of limit");
    }

    private Object getObjectFromFile(n nVar) {
        try {
            byte[] c2 = a1.c(new File(this.path + this.name, (String) nVar.d));
            if (c2 != null) {
                int i = c2[0] & 255;
                String str = new String(c2, 1, i, StandardCharsets.UTF_8);
                b bVar = this.encoderMap.get(str);
                if (bVar != null) {
                    int i2 = i + 1;
                    return bVar.a(c2, i2, c2.length - i2);
                }
                warning(new Exception("No encoder for tag:" + str));
                return null;
            }
            warning(new Exception("Read object data failed"));
            return null;
        } catch (Exception e) {
            error(e);
            return null;
        }
    }

    private String getStringFromFile(o oVar) {
        try {
            byte[] c2 = a1.c(new File(this.path + this.name, (String) oVar.d));
            if (c2 == null || c2.length == 0) {
                return "";
            }
            return new String(c2, StandardCharsets.UTF_8);
        } catch (Exception e) {
            error(e);
        }
        return "";
    }

    private void info(String str) {
        c cVar = this.logger;
        if (cVar != null) {
            cVar.a(this.name, str);
        }
    }

    private boolean isABFileEqual() {
        z zVar = new z(this.dataEnd);
        this.bBuffer.rewind();
        this.bBuffer.get(zVar.f9123a, 0, this.dataEnd);
        byte[] bArr = this.fastBuffer.f9123a;
        byte[] bArr2 = zVar.f9123a;
        for (int i = 0; i < this.dataEnd; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    private synchronized void loadData() {
        try {
            long nanoTime = System.nanoTime();
            if (!loadFromCFile() && this.writingMode == 0) {
                loadFromABFile();
            }
            if (this.fastBuffer == null) {
                this.fastBuffer = new z(PAGE_SIZE);
            }
            if (this.logger != null) {
                info("loading finish, data len:" + this.dataEnd + ", get keys:" + this.data.size() + ", use time:" + ((System.nanoTime() - nanoTime) / 1000000) + " ms");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void loadFromABFile() {
        long j;
        long j2;
        long j3;
        File file = new File(this.path, this.name + A_SUFFIX);
        File file2 = new File(this.path, this.name + B_SUFFIX);
        try {
            if (a1.d(file) && a1.d(file2)) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(file2, "rw");
                long length = randomAccessFile.length();
                long length2 = randomAccessFile2.length();
                this.aChannel = randomAccessFile.getChannel();
                this.bChannel = randomAccessFile2.getChannel();
                try {
                    FileChannel fileChannel = this.aChannel;
                    FileChannel.MapMode mapMode = FileChannel.MapMode.READ_WRITE;
                    int i = (length > 0L ? 1 : (length == 0L ? 0 : -1));
                    if (i > 0) {
                        j = length;
                    } else {
                        j = PAGE_SIZE;
                    }
                    MappedByteBuffer map = fileChannel.map(mapMode, 0L, j);
                    this.aBuffer = map;
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    map.order(byteOrder);
                    FileChannel fileChannel2 = this.bChannel;
                    int i2 = (length2 > 0L ? 1 : (length2 == 0L ? 0 : -1));
                    if (i2 > 0) {
                        j2 = length2;
                    } else {
                        j2 = PAGE_SIZE;
                    }
                    MappedByteBuffer map2 = fileChannel2.map(mapMode, 0L, j2);
                    this.bBuffer = map2;
                    map2.order(byteOrder);
                    this.fastBuffer = new z(this.aBuffer.capacity());
                    if (i == 0 && i2 == 0) {
                        this.dataEnd = 12;
                        return;
                    }
                    int i3 = this.aBuffer.getInt();
                    long j4 = this.aBuffer.getLong();
                    int i4 = this.bBuffer.getInt();
                    long j5 = this.bBuffer.getLong();
                    if (i3 >= 0) {
                        if (i3 <= length - 12) {
                            this.dataEnd = i3 + 12;
                            this.aBuffer.rewind();
                            j3 = 12;
                            this.aBuffer.get(this.fastBuffer.f9123a, 0, this.dataEnd);
                            if (j4 == this.fastBuffer.a(12, i3) && parseData() == 0) {
                                this.checksum = j4;
                                if (length != length2 || !isABFileEqual()) {
                                    warning(new Exception("B file error"));
                                    copyBuffer(this.aBuffer, this.bBuffer, this.dataEnd);
                                    return;
                                }
                                return;
                            }
                        } else {
                            j3 = 12;
                        }
                    } else {
                        j3 = 12;
                    }
                    if (i4 >= 0 && i4 <= length2 - j3) {
                        this.data.clear();
                        clearInvalid();
                        this.dataEnd = i4 + 12;
                        if (this.fastBuffer.f9123a.length != this.bBuffer.capacity()) {
                            this.fastBuffer = new z(this.bBuffer.capacity());
                        }
                        this.bBuffer.rewind();
                        this.bBuffer.get(this.fastBuffer.f9123a, 0, this.dataEnd);
                        if (j5 == this.fastBuffer.a(12, i4) && parseData() == 0) {
                            warning(new Exception("A file error"));
                            copyBuffer(this.bBuffer, this.aBuffer, this.dataEnd);
                            this.checksum = j5;
                            return;
                        }
                    }
                    error(BOTH_FILES_ERROR);
                    resetData();
                    return;
                } catch (IOException e) {
                    error(e);
                    toBlockingMode();
                    tryBlockingIO(file, file2);
                    return;
                }
            }
            error(new Exception(OPEN_FILE_FAILED));
            toBlockingMode();
        } catch (Exception e2) {
            error(e2);
            clearData();
            toBlockingMode();
        }
    }

    private boolean loadFromCFile() {
        File file = new File(this.path, this.name + C_SUFFIX);
        File file2 = new File(this.path, this.name + TEMP_SUFFIX);
        boolean z = false;
        try {
            if (!file.exists()) {
                if (file2.exists()) {
                    file = file2;
                } else {
                    file = null;
                }
            }
            if (file != null) {
                if (loadWithBlockingIO(file)) {
                    if (this.writingMode == 0) {
                        if (writeToABFile(this.fastBuffer)) {
                            info("recover from c file");
                            try {
                                deleteCFiles();
                                return true;
                            } catch (Exception e) {
                                e = e;
                                z = true;
                                error(e);
                                return z;
                            }
                        }
                        this.writingMode = 1;
                        return false;
                    }
                } else {
                    clearData();
                    deleteCFiles();
                    return false;
                }
            } else if (this.writingMode != 0) {
                File file3 = new File(this.path, this.name + A_SUFFIX);
                File file4 = new File(this.path, this.name + B_SUFFIX);
                if (file3.exists() && file4.exists()) {
                    tryBlockingIO(file3, file4);
                }
            }
            return false;
        } catch (Exception e2) {
            e = e2;
        }
    }

    private boolean loadWithBlockingIO(File file) throws IOException {
        long length = file.length();
        if (length != 0 && length <= 536870912) {
            int i = (int) length;
            int newCapacity = getNewCapacity(PAGE_SIZE, i);
            z zVar = this.fastBuffer;
            if (zVar != null && zVar.f9123a.length == newCapacity) {
                zVar.b = 0;
            } else {
                zVar = new z(new byte[newCapacity]);
                this.fastBuffer = zVar;
            }
            a1.a(file, zVar.f9123a, i);
            int d2 = zVar.d();
            long e = zVar.e();
            this.dataEnd = d2 + 12;
            if (d2 >= 0 && d2 <= i - 12 && e == zVar.a(12, d2) && parseData() == 0) {
                this.checksum = e;
                return true;
            }
        }
        return false;
    }

    private void mergeInvalids() {
        int size = this.invalids.size() - 1;
        d dVar = this.invalids.get(size);
        while (size > 0) {
            int i = size - 1;
            d dVar2 = this.invalids.get(i);
            if (dVar.b == dVar2.f9077a) {
                dVar2.f9077a = dVar.f9077a;
                this.invalids.remove(size);
            }
            dVar = dVar2;
            size = i;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x016d, code lost:
        throw new java.lang.Exception(com.mbridge.msdk.foundation.tools.FastKV.PARSE_DATA_FAILED);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int parseData() {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.FastKV.parseData():int");
    }

    private void preparePutBytes() {
        ensureSize(this.updateSize);
        int i = this.dataEnd;
        this.updateStart = i;
        this.dataEnd = this.updateSize + i;
        this.fastBuffer.b = i;
        this.sizeChanged = true;
    }

    private void putKey(String str, int i) {
        this.fastBuffer.a((byte) i);
        if (i == str.length()) {
            z zVar = this.fastBuffer;
            str.getBytes(0, i, zVar.f9123a, zVar.b);
            this.fastBuffer.b += i;
            return;
        }
        this.fastBuffer.c(str);
    }

    private void putStringValue(String str, int i) {
        this.fastBuffer.a((short) i);
        if (i == str.length()) {
            z zVar = this.fastBuffer;
            str.getBytes(0, i, zVar.f9123a, zVar.b);
            return;
        }
        this.fastBuffer.c(str);
    }

    private void resetBuffer(MappedByteBuffer mappedByteBuffer) throws IOException {
        FileChannel fileChannel;
        int capacity = mappedByteBuffer.capacity();
        int i = PAGE_SIZE;
        if (capacity != i) {
            if (mappedByteBuffer == this.aBuffer) {
                fileChannel = this.aChannel;
            } else {
                fileChannel = this.bChannel;
            }
            FileChannel fileChannel2 = fileChannel;
            long j = i;
            fileChannel2.truncate(j);
            MappedByteBuffer map = fileChannel2.map(FileChannel.MapMode.READ_WRITE, 0L, j);
            map.order(ByteOrder.LITTLE_ENDIAN);
            if (mappedByteBuffer == this.aBuffer) {
                this.aBuffer = map;
            } else {
                this.bBuffer = map;
            }
            mappedByteBuffer = map;
        }
        mappedByteBuffer.putInt(0, 0);
        mappedByteBuffer.putLong(4, 0L);
    }

    private void resetData() {
        if (this.writingMode == 0) {
            try {
                resetBuffer(this.aBuffer);
                resetBuffer(this.bBuffer);
            } catch (IOException unused) {
                toBlockingMode();
            }
        }
        clearData();
        a1.a(new File(this.path + this.name));
    }

    private int saveArray(String str, byte[] bArr, byte b2) {
        this.tempExternalName = null;
        if (bArr.length < 2048) {
            return wrapArray(str, bArr, b2);
        }
        info("large value, key: " + str + ", size: " + bArr.length);
        String b3 = a1.b();
        if (a1.a(new File(this.path + this.name, b3), bArr)) {
            this.tempExternalName = b3;
            byte[] bArr2 = new byte[32];
            b3.getBytes(0, 32, bArr2, 0);
            return wrapArray(str, bArr2, (byte) (b2 | SignedBytes.MAX_POWER_OF_TWO));
        }
        error("save large value failed");
        return 0;
    }

    private long shiftCheckSum(long j, int i) {
        int i2 = (i & 7) << 3;
        return (j >>> (64 - i2)) | (j << i2);
    }

    private void syncABBuffer(MappedByteBuffer mappedByteBuffer) {
        if (this.sizeChanged && mappedByteBuffer != this.aBuffer) {
            mappedByteBuffer.putInt(0, this.dataEnd - 12);
        }
        mappedByteBuffer.putLong(4, this.checksum);
        int i = this.removeStart;
        if (i != 0) {
            mappedByteBuffer.put(i, this.fastBuffer.f9123a[i]);
        }
        if (this.updateSize != 0) {
            mappedByteBuffer.position(this.updateStart);
            mappedByteBuffer.put(this.fastBuffer.f9123a, this.updateStart, this.updateSize);
        }
    }

    private void toBlockingMode() {
        this.writingMode = 1;
        a1.a(this.aChannel);
        a1.a(this.bChannel);
        this.aChannel = null;
        this.bChannel = null;
        this.aBuffer = null;
        this.bBuffer = null;
    }

    private void truncate(int i) {
        int i2 = PAGE_SIZE;
        int newCapacity = getNewCapacity(i2, i + i2);
        byte[] bArr = this.fastBuffer.f9123a;
        if (newCapacity >= bArr.length) {
            return;
        }
        byte[] bArr2 = new byte[newCapacity];
        System.arraycopy(bArr, 0, bArr2, 0, this.dataEnd);
        this.fastBuffer.f9123a = bArr2;
        if (this.writingMode == 0) {
            try {
                long j = newCapacity;
                this.aChannel.truncate(j);
                FileChannel fileChannel = this.aChannel;
                FileChannel.MapMode mapMode = FileChannel.MapMode.READ_WRITE;
                MappedByteBuffer map = fileChannel.map(mapMode, 0L, j);
                this.aBuffer = map;
                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                map.order(byteOrder);
                this.bChannel.truncate(j);
                MappedByteBuffer map2 = this.bChannel.map(mapMode, 0L, j);
                this.bBuffer = map2;
                map2.order(byteOrder);
            } catch (IOException e) {
                error(new Exception(MAP_FAILED, e));
                toBlockingMode();
            }
        }
        info(TRUNCATE_FINISH);
    }

    private void tryBlockingIO(File file, File file2) {
        try {
            if (loadWithBlockingIO(file)) {
                return;
            }
        } catch (IOException e) {
            warning(e);
        }
        clearData();
        try {
            if (loadWithBlockingIO(file2)) {
                return;
            }
        } catch (IOException e2) {
            warning(e2);
        }
        clearData();
    }

    private void updateBoolean(byte b2, int i) {
        long shiftCheckSum = this.checksum ^ shiftCheckSum(1L, i);
        this.checksum = shiftCheckSum;
        if (this.writingMode == 0) {
            this.aBuffer.putLong(4, shiftCheckSum);
            this.aBuffer.put(i, b2);
            this.bBuffer.putLong(4, this.checksum);
            this.bBuffer.put(i, b2);
        } else {
            this.fastBuffer.a(4, shiftCheckSum);
        }
        this.fastBuffer.f9123a[i] = b2;
    }

    private void updateBytes(int i, byte[] bArr) {
        int length = bArr.length;
        this.checksum ^= this.fastBuffer.a(i, length);
        z zVar = this.fastBuffer;
        zVar.b = i;
        zVar.a(bArr);
        long a2 = this.checksum ^ this.fastBuffer.a(i, length);
        this.checksum = a2;
        if (this.writingMode == 0) {
            this.aBuffer.putInt(0, -1);
            this.aBuffer.putLong(4, this.checksum);
            this.aBuffer.position(i);
            this.aBuffer.put(bArr);
            this.aBuffer.putInt(0, this.dataEnd - 12);
            this.bBuffer.putLong(4, this.checksum);
            this.bBuffer.position(i);
            this.bBuffer.put(bArr);
            return;
        }
        this.fastBuffer.a(4, a2);
    }

    private void updateChange() {
        this.checksum ^= this.fastBuffer.a(this.updateStart, this.updateSize);
        if (this.writingMode == 0) {
            this.aBuffer.putInt(0, -1);
            syncABBuffer(this.aBuffer);
            this.aBuffer.putInt(0, this.dataEnd - 12);
            syncABBuffer(this.bBuffer);
        } else {
            if (this.sizeChanged) {
                this.fastBuffer.b(0, this.dataEnd - 12);
            }
            this.fastBuffer.a(4, this.checksum);
        }
        this.sizeChanged = false;
        this.removeStart = 0;
        this.updateSize = 0;
    }

    private void updateInt32(int i, long j, int i2) {
        long shiftCheckSum = shiftCheckSum(j, i2) ^ this.checksum;
        this.checksum = shiftCheckSum;
        if (this.writingMode == 0) {
            this.aBuffer.putLong(4, shiftCheckSum);
            this.aBuffer.putInt(i2, i);
            this.bBuffer.putLong(4, this.checksum);
            this.bBuffer.putInt(i2, i);
        } else {
            this.fastBuffer.a(4, shiftCheckSum);
        }
        this.fastBuffer.b(i2, i);
    }

    private void updateInt64(long j, long j2, int i) {
        long shiftCheckSum = shiftCheckSum(j2, i) ^ this.checksum;
        this.checksum = shiftCheckSum;
        if (this.writingMode == 0) {
            this.aBuffer.putLong(4, shiftCheckSum);
            this.aBuffer.putLong(i, j);
            this.bBuffer.putLong(4, this.checksum);
            this.bBuffer.putLong(i, j);
        } else {
            this.fastBuffer.a(4, shiftCheckSum);
        }
        this.fastBuffer.a(i, j);
    }

    private void updateObject(String str, Object obj, byte[] bArr, p pVar) {
        String str2;
        boolean z;
        int saveArray = saveArray(str, bArr, pVar.a());
        if (saveArray != 0) {
            if (pVar.b) {
                str2 = (String) pVar.d;
            } else {
                str2 = null;
            }
            remove(pVar.a(), pVar.c, pVar.f9102a + pVar.e);
            String str3 = this.tempExternalName;
            if (str3 != null) {
                z = true;
            } else {
                z = false;
            }
            pVar.c = this.updateStart;
            pVar.f9102a = saveArray;
            pVar.b = z;
            if (z) {
                pVar.d = str3;
                pVar.e = 32;
                this.tempExternalName = null;
            } else {
                pVar.d = obj;
                pVar.e = bArr.length;
            }
            updateChange();
            checkGC();
            if (str2 != null) {
                a1.a(new File(this.path + this.name, str2));
            }
        }
    }

    private void updateOffset(int i, int[] iArr) {
        for (h hVar : this.data.values()) {
            int i2 = hVar.f9102a;
            if (i2 > i) {
                int i3 = iArr[(a1.a(iArr, i2) << 1) + 1];
                hVar.f9102a -= i3;
                if (hVar.a() >= 6) {
                    ((p) hVar).c -= i3;
                }
            }
        }
    }

    private void warning(Exception exc) {
        c cVar = this.logger;
        if (cVar != null) {
            cVar.a(this.name, exc);
        }
    }

    private int wrapArray(String str, byte[] bArr, byte b2) {
        wrapHeader(str, b2, bArr.length + 2);
        this.fastBuffer.a((short) bArr.length);
        z zVar = this.fastBuffer;
        int i = zVar.b;
        zVar.a(bArr);
        return i;
    }

    private void wrapHeader(String str, byte b2) {
        wrapHeader(str, b2, TYPE_SIZE[b2]);
    }

    private boolean writeToABFile(z zVar) {
        int length = zVar.f9123a.length;
        File file = new File(this.path, this.name + A_SUFFIX);
        File file2 = new File(this.path, this.name + B_SUFFIX);
        try {
            if (a1.d(file) && a1.d(file2)) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(file2, "rw");
                long j = length;
                randomAccessFile.setLength(j);
                randomAccessFile2.setLength(j);
                this.aChannel = randomAccessFile.getChannel();
                this.bChannel = randomAccessFile2.getChannel();
                FileChannel fileChannel = this.aChannel;
                FileChannel.MapMode mapMode = FileChannel.MapMode.READ_WRITE;
                MappedByteBuffer map = fileChannel.map(mapMode, 0L, j);
                this.aBuffer = map;
                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                map.order(byteOrder);
                MappedByteBuffer map2 = this.bChannel.map(mapMode, 0L, j);
                this.bBuffer = map2;
                map2.order(byteOrder);
                this.aBuffer.put(zVar.f9123a, 0, this.dataEnd);
                this.bBuffer.put(zVar.f9123a, 0, this.dataEnd);
                return true;
            }
            throw new Exception(OPEN_FILE_FAILED);
        } catch (Exception e) {
            error(e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean writeToCFile() {
        try {
            try {
                String str = this.path;
                File file = new File(str, this.name + TEMP_SUFFIX);
                if (a1.d(file)) {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                    randomAccessFile.setLength(this.dataEnd);
                    randomAccessFile.write(this.fastBuffer.f9123a, 0, this.dataEnd);
                    randomAccessFile.close();
                    String str2 = this.path;
                    File file2 = new File(str2, this.name + C_SUFFIX);
                    if (file2.exists()) {
                        if (file2.delete()) {
                        }
                    }
                    if (file.renameTo(file2)) {
                        return true;
                    }
                    warning(new Exception("rename failed"));
                }
            } catch (Exception e) {
                error(e);
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void clear() {
        resetData();
        if (this.writingMode != 0) {
            deleteCFiles();
        }
    }

    public synchronized boolean commit() {
        this.autoCommit = true;
        return commitToCFile();
    }

    public synchronized boolean contains(String str) {
        return this.data.containsKey(str);
    }

    public synchronized void disableAutoCommit() {
        this.autoCommit = false;
    }

    public synchronized void force() {
        if (this.writingMode == 0) {
            this.aBuffer.force();
            this.bBuffer.force();
        }
    }

    public void gc(int i) {
        boolean z;
        int i2;
        Collections.sort(this.invalids);
        mergeInvalids();
        d dVar = this.invalids.get(0);
        int i3 = dVar.b;
        int i4 = this.dataEnd;
        int i5 = i4 - this.invalidBytes;
        int i6 = i5 - 12;
        int i7 = i5 - i3;
        int i8 = i4 - i3;
        boolean z2 = true;
        if (i6 < i8 + i7) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            this.checksum ^= this.fastBuffer.a(i3, i8);
        }
        int size = this.invalids.size();
        int i9 = size - 1;
        int i10 = this.dataEnd - this.invalids.get(i9).f9077a;
        if (i10 > 0) {
            i2 = size;
        } else {
            i2 = i9;
        }
        int[] iArr = new int[i2 << 1];
        int i11 = dVar.b;
        int i12 = dVar.f9077a;
        int i13 = 1;
        while (i13 < size) {
            d dVar2 = this.invalids.get(i13);
            boolean z3 = z2;
            int i14 = dVar2.b - i12;
            byte[] bArr = this.fastBuffer.f9123a;
            System.arraycopy(bArr, i12, bArr, i11, i14);
            int i15 = (i13 - 1) << 1;
            iArr[i15] = i12;
            iArr[i15 + 1] = i12 - i11;
            i11 += i14;
            i12 = dVar2.f9077a;
            i13++;
            z2 = z3;
        }
        if (i10 > 0) {
            byte[] bArr2 = this.fastBuffer.f9123a;
            System.arraycopy(bArr2, i12, bArr2, i11, i10);
            int i16 = i9 << 1;
            iArr[i16] = i12;
            iArr[i16 + 1] = i12 - i11;
        }
        clearInvalid();
        if (z) {
            this.checksum = this.fastBuffer.a(12, i6);
        } else {
            this.checksum ^= this.fastBuffer.a(i3, i7);
        }
        this.dataEnd = i5;
        if (this.writingMode == 0) {
            this.aBuffer.putInt(0, -1);
            this.aBuffer.putLong(4, this.checksum);
            this.aBuffer.position(i3);
            this.aBuffer.put(this.fastBuffer.f9123a, i3, i7);
            this.aBuffer.putInt(0, i6);
            this.bBuffer.putInt(0, i6);
            this.bBuffer.putLong(4, this.checksum);
            this.bBuffer.position(i3);
            this.bBuffer.put(this.fastBuffer.f9123a, i3, i7);
        } else {
            this.fastBuffer.b(0, i6);
            this.fastBuffer.a(4, this.checksum);
        }
        updateOffset(i3, iArr);
        int i17 = i5 + i;
        if (this.fastBuffer.f9123a.length - i17 > TRUNCATE_THRESHOLD) {
            truncate(i17);
        }
        info(GC_FINISH);
    }

    public synchronized Map<String, Object> getAll() {
        Object valueOf;
        int size = this.data.size();
        if (size == 0) {
            return new HashMap();
        }
        HashMap hashMap = new HashMap(((size * 4) / 3) + 1);
        for (Map.Entry<String, h> entry : this.data.entrySet()) {
            String key = entry.getKey();
            h value = entry.getValue();
            switch (value.a()) {
                case 1:
                    valueOf = Boolean.valueOf(((i) value).b);
                    break;
                case 2:
                    valueOf = Integer.valueOf(((l) value).b);
                    break;
                case 3:
                    valueOf = Float.valueOf(((k) value).b);
                    break;
                case 4:
                    valueOf = Long.valueOf(((m) value).b);
                    break;
                case 5:
                    valueOf = Double.valueOf(((j) value).b);
                    break;
                case 6:
                    o oVar = (o) value;
                    if (oVar.b) {
                        valueOf = getStringFromFile(oVar);
                        break;
                    } else {
                        valueOf = oVar.d;
                        break;
                    }
                case 7:
                    g gVar = (g) value;
                    if (gVar.b) {
                        valueOf = getArrayFromFile(gVar);
                        break;
                    } else {
                        valueOf = gVar.d;
                        break;
                    }
                case 8:
                    n nVar = (n) value;
                    if (nVar.b) {
                        valueOf = getObjectFromFile(nVar);
                        break;
                    } else {
                        valueOf = nVar.d;
                        break;
                    }
                default:
                    valueOf = null;
                    break;
            }
            hashMap.put(key, valueOf);
        }
        return hashMap;
    }

    public byte[] getArray(String str) {
        return getArray(str, EMPTY_ARRAY);
    }

    public synchronized boolean getBoolean(String str) {
        return getBoolean(str, false);
    }

    public double getDouble(String str) {
        return getDouble(str, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
    }

    public float getFloat(String str) {
        return getFloat(str, 0.0f);
    }

    public int getInt(String str) {
        return getInt(str, 0);
    }

    public synchronized long getLong(String str) {
        m mVar;
        mVar = (m) this.data.get(str);
        return mVar == null ? 0L : mVar.b;
    }

    public synchronized <T> T getObject(String str) {
        T t;
        try {
            n nVar = (n) this.data.get(str);
            if (nVar != null) {
                if (nVar.b) {
                    t = (T) getObjectFromFile(nVar);
                } else {
                    t = (T) nVar.d;
                }
                return t;
            }
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public String getString(String str) {
        return getString(str, "");
    }

    public synchronized Set<String> getStringSet(String str) {
        return (Set) getObject(str);
    }

    public void putAll(Map<String, Object> map) {
        putAll(map, null);
    }

    public synchronized void putArray(String str, byte[] bArr) {
        Throwable th;
        try {
            try {
                checkKey(str);
                if (bArr == null) {
                    try {
                        remove(str);
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                } else {
                    addOrUpdate(str, bArr, bArr, (g) this.data.get(str), (byte) 7);
                }
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
            throw th;
        }
    }

    public synchronized void putBoolean(String str, boolean z) {
        try {
            checkKey(str);
            i iVar = (i) this.data.get(str);
            if (iVar == null) {
                wrapHeader(str, (byte) 1);
                z zVar = this.fastBuffer;
                int i = zVar.b;
                zVar.a(z ? (byte) 1 : (byte) 0);
                updateChange();
                this.data.put(str, new i(i, z));
                checkIfCommit();
            } else if (iVar.b != z) {
                iVar.b = z;
                updateBoolean(z ? (byte) 1 : (byte) 0, iVar.f9102a);
                checkIfCommit();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void putDouble(String str, double d2) {
        Throwable th;
        try {
            try {
                checkKey(str);
                j jVar = (j) this.data.get(str);
                if (jVar == null) {
                    try {
                        wrapHeader(str, (byte) 5);
                        z zVar = this.fastBuffer;
                        int i = zVar.b;
                        zVar.a(Double.doubleToRawLongBits(d2));
                        updateChange();
                        this.data.put(str, new j(i, d2));
                        checkIfCommit();
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                } else if (jVar.b != d2) {
                    long doubleToRawLongBits = Double.doubleToRawLongBits(d2);
                    long doubleToRawLongBits2 = Double.doubleToRawLongBits(jVar.b) ^ doubleToRawLongBits;
                    jVar.b = d2;
                    updateInt64(doubleToRawLongBits, doubleToRawLongBits2, jVar.f9102a);
                    checkIfCommit();
                }
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
            throw th;
        }
    }

    public synchronized void putFloat(String str, float f) {
        try {
            checkKey(str);
            k kVar = (k) this.data.get(str);
            if (kVar == null) {
                wrapHeader(str, (byte) 3);
                z zVar = this.fastBuffer;
                int i = zVar.b;
                zVar.g(Float.floatToRawIntBits(f));
                updateChange();
                this.data.put(str, new k(i, f));
                checkIfCommit();
            } else if (kVar.b != f) {
                int floatToRawIntBits = Float.floatToRawIntBits(f);
                long floatToRawIntBits2 = (Float.floatToRawIntBits(kVar.b) ^ floatToRawIntBits) & KeyboardMap.kValueMask;
                kVar.b = f;
                updateInt32(floatToRawIntBits, floatToRawIntBits2, kVar.f9102a);
                checkIfCommit();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void putInt(String str, int i) {
        try {
            checkKey(str);
            l lVar = (l) this.data.get(str);
            if (lVar == null) {
                wrapHeader(str, (byte) 2);
                z zVar = this.fastBuffer;
                int i2 = zVar.b;
                zVar.g(i);
                updateChange();
                this.data.put(str, new l(i2, i));
                checkIfCommit();
            } else {
                int i3 = lVar.b;
                if (i3 != i) {
                    long j = (i3 ^ i) & KeyboardMap.kValueMask;
                    lVar.b = i;
                    updateInt32(i, j, lVar.f9102a);
                    checkIfCommit();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void putLong(String str, long j) {
        Throwable th;
        try {
            try {
                checkKey(str);
                m mVar = (m) this.data.get(str);
                if (mVar == null) {
                    try {
                        wrapHeader(str, (byte) 4);
                        z zVar = this.fastBuffer;
                        int i = zVar.b;
                        zVar.a(j);
                        updateChange();
                        this.data.put(str, new m(i, j));
                        checkIfCommit();
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                } else {
                    long j2 = mVar.b;
                    if (j2 != j) {
                        long j3 = j ^ j2;
                        mVar.b = j;
                        updateInt64(j, j3, mVar.f9102a);
                        checkIfCommit();
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
            throw th;
        }
    }

    public synchronized <T> void putObject(String str, T t, b<T> bVar) {
        Throwable th;
        byte[] bArr;
        try {
            try {
                checkKey(str);
                if (bVar != null) {
                    String a2 = bVar.a();
                    if (a2 != null && !a2.isEmpty() && a2.length() <= 50) {
                        if (this.encoderMap.containsKey(a2)) {
                            try {
                                if (t == null) {
                                    remove(str);
                                    return;
                                }
                                try {
                                    bArr = bVar.a(t);
                                } catch (Exception e) {
                                    error(e);
                                    bArr = null;
                                }
                                if (bArr == null) {
                                    remove(str);
                                    return;
                                }
                                int b2 = z.b(a2);
                                z zVar = new z(b2 + 1 + bArr.length);
                                zVar.a((byte) b2);
                                zVar.c(a2);
                                zVar.a(bArr);
                                addOrUpdate(str, t, zVar.f9123a, (n) this.data.get(str), (byte) 8);
                                return;
                            } catch (Throwable th2) {
                                th = th2;
                                throw th;
                            }
                        }
                        throw new IllegalArgumentException("Encoder hasn't been registered");
                    }
                    throw new IllegalArgumentException("Invalid encoder tag:" + a2);
                }
                throw new IllegalArgumentException("Encoder is null");
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
            throw th;
        }
    }

    public synchronized void putString(String str, String str2) {
        Throwable th;
        byte[] bytes;
        try {
            try {
                checkKey(str);
            } catch (Throwable th2) {
                th = th2;
                th = th;
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            th = th;
            throw th;
        }
        try {
            if (str2 == null) {
                remove(str);
            } else {
                o oVar = (o) this.data.get(str);
                if (str2.length() * 3 < 2048) {
                    fastPutString(str, str2, oVar);
                } else {
                    if (str2.isEmpty()) {
                        bytes = EMPTY_ARRAY;
                    } else {
                        bytes = str2.getBytes(StandardCharsets.UTF_8);
                    }
                    addOrUpdate(str, str2, bytes, oVar, (byte) 6);
                }
            }
        } catch (Throwable th4) {
            th = th4;
            throw th;
        }
    }

    public synchronized void putStringSet(String str, Set<String> set) {
        try {
            if (set == null) {
                remove(str);
            } else {
                putObject(str, set, x0.f9122a);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void remove(String str) {
        try {
            h hVar = this.data.get(str);
            if (hVar != null) {
                this.data.remove(str);
                byte a2 = hVar.a();
                String str2 = null;
                if (a2 <= 5) {
                    int b2 = z.b(str);
                    int i = hVar.f9102a;
                    remove(a2, i - (b2 + 2), i + TYPE_SIZE[a2]);
                } else {
                    p pVar = (p) hVar;
                    remove(a2, pVar.c, pVar.f9102a + pVar.e);
                    if (pVar.b) {
                        str2 = (String) pVar.d;
                    }
                }
                byte b3 = (byte) (a2 | Byte.MIN_VALUE);
                if (this.writingMode == 0) {
                    this.aBuffer.putLong(4, this.checksum);
                    this.aBuffer.put(this.removeStart, b3);
                    this.bBuffer.putLong(4, this.checksum);
                    this.bBuffer.put(this.removeStart, b3);
                } else {
                    this.fastBuffer.a(4, this.checksum);
                }
                this.removeStart = 0;
                if (str2 != null) {
                    a1.a(new File(this.path + this.name, str2));
                }
                checkGC();
                checkIfCommit();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized String toString() {
        return "FastKV: path:" + this.path + " name:" + this.name;
    }

    private void wrapHeader(String str, byte b2, int i) {
        int b3 = z.b(str);
        checkKeySize(b3);
        this.updateSize = b3 + 2 + i;
        preparePutBytes();
        this.fastBuffer.a(b2);
        putKey(str, b3);
    }

    public synchronized byte[] getArray(String str, byte[] bArr) {
        try {
            g gVar = (g) this.data.get(str);
            if (gVar != null) {
                return gVar.b ? getArrayFromFile(gVar) : (byte[]) gVar.d;
            }
            return bArr;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized boolean getBoolean(String str, boolean z) {
        i iVar = (i) this.data.get(str);
        if (iVar != null) {
            z = iVar.b;
        }
        return z;
    }

    public synchronized double getDouble(String str, double d2) {
        j jVar = (j) this.data.get(str);
        if (jVar != null) {
            d2 = jVar.b;
        }
        return d2;
    }

    public synchronized float getFloat(String str, float f) {
        k kVar = (k) this.data.get(str);
        if (kVar != null) {
            f = kVar.b;
        }
        return f;
    }

    public synchronized int getInt(String str, int i) {
        l lVar = (l) this.data.get(str);
        if (lVar != null) {
            i = lVar.b;
        }
        return i;
    }

    public synchronized String getString(String str, String str2) {
        try {
            o oVar = (o) this.data.get(str);
            if (oVar != null) {
                return oVar.b ? getStringFromFile(oVar) : (String) oVar.d;
            }
            return str2;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void putAll(Map<String, Object> map, Map<Class, b> map2) {
        try {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (key != null && !key.isEmpty()) {
                    if (value instanceof String) {
                        putString(key, (String) value);
                    } else if (value instanceof Boolean) {
                        putBoolean(key, ((Boolean) value).booleanValue());
                    } else if (value instanceof Integer) {
                        putInt(key, ((Integer) value).intValue());
                    } else if (value instanceof Long) {
                        putLong(key, ((Long) value).longValue());
                    } else if (value instanceof Float) {
                        putFloat(key, ((Float) value).floatValue());
                    } else if (value instanceof Double) {
                        putDouble(key, ((Double) value).doubleValue());
                    } else if (value instanceof Set) {
                        Set<String> set = (Set) value;
                        if (!set.isEmpty() && (set.iterator().next() instanceof String)) {
                            putStringSet(key, set);
                        }
                    } else if (value instanceof byte[]) {
                        putArray(key, (byte[]) value);
                    } else if (map2 != null) {
                        b bVar = map2.get(value.getClass());
                        if (bVar != null) {
                            putObject(key, value, bVar);
                        } else {
                            warning(new Exception("missing encoder for type:" + value.getClass()));
                        }
                    } else {
                        warning(new Exception("missing encoders"));
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void error(String str) {
        c cVar = this.logger;
        if (cVar != null) {
            cVar.b(this.name, new Exception(str));
        }
    }

    public synchronized long getLong(String str, long j) {
        m mVar = (m) this.data.get(str);
        if (mVar != null) {
            j = mVar.b;
        }
        return j;
    }

    private void remove(byte b2, int i, int i2) {
        countInvalid(i, i2);
        byte b3 = (byte) (b2 | Byte.MIN_VALUE);
        byte[] bArr = this.fastBuffer.f9123a;
        this.checksum = (((bArr[i] ^ b3) & 255) << ((i & 7) << 3)) ^ this.checksum;
        bArr[i] = b3;
        this.removeStart = i;
    }
}

package com.changdu.component.pay.base.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Process;
import androidx.annotation.Nullable;
import j$.util.DesugarCollections;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ALocalCache {
    private static final int MAX_COUNT = Integer.MAX_VALUE;
    private static final int MAX_SIZE = 50000000;
    protected static String TAG = "ALocalCache";
    public static final int TIME_DAY = 86400;
    public static final int TIME_HOUR = 3600;
    private static Map<String, ALocalCache> mInstanceMap = new HashMap();
    private ALocalCacheManager mCache;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class ALocalCacheManager {
        private final AtomicInteger cacheCount;
        protected File cacheDir;
        private final AtomicLong cacheSize;
        private final int countLimit;
        private final Map<File, Long> lastUsageDates;
        private final long sizeLimit;

        private void calculateCacheSizeAndCacheCount() {
            new Thread(new Runnable() { // from class: com.changdu.component.pay.base.internal.ALocalCache.ALocalCacheManager.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        File[] listFiles = ALocalCacheManager.this.cacheDir.listFiles();
                        if (listFiles != null) {
                            int i = 0;
                            int i2 = 0;
                            for (File file : listFiles) {
                                i = (int) (i + ALocalCacheManager.this.calculateSize(file));
                                i2++;
                                ALocalCacheManager.this.lastUsageDates.put(file, Long.valueOf(file.lastModified()));
                            }
                            ALocalCacheManager.this.cacheSize.set(i);
                            ALocalCacheManager.this.cacheCount.set(i2);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long calculateSize(File file) {
            return file.length();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clear() {
            try {
                this.lastUsageDates.clear();
                this.cacheSize.set(0L);
                File[] listFiles = this.cacheDir.listFiles();
                if (listFiles != null) {
                    for (File file : listFiles) {
                        file.delete();
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File get(String str) {
            File newFile = newFile(str);
            long currentTimeMillis = System.currentTimeMillis();
            Long valueOf = Long.valueOf(currentTimeMillis);
            newFile.setLastModified(currentTimeMillis);
            this.lastUsageDates.put(newFile, valueOf);
            return newFile;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File newFile(String str) {
            File file = this.cacheDir;
            return new File(file, str.hashCode() + "");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void put(File file) {
            try {
                int i = this.cacheCount.get();
                while (i + 1 > this.countLimit) {
                    long removeNext = removeNext();
                    if (removeNext == 0) {
                        break;
                    }
                    this.cacheSize.addAndGet(-removeNext);
                    i = this.cacheCount.addAndGet(-1);
                }
                this.cacheCount.addAndGet(1);
                long calculateSize = calculateSize(file);
                long j = this.cacheSize.get();
                while (j + calculateSize > this.sizeLimit) {
                    long removeNext2 = removeNext();
                    if (removeNext2 == 0) {
                        break;
                    }
                    j = this.cacheSize.addAndGet(-removeNext2);
                }
                this.cacheSize.addAndGet(calculateSize);
                long currentTimeMillis = System.currentTimeMillis();
                Long valueOf = Long.valueOf(currentTimeMillis);
                file.setLastModified(currentTimeMillis);
                this.lastUsageDates.put(file, valueOf);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean remove(String str) {
            return get(str).delete();
        }

        private long removeNext() {
            File file;
            try {
                if (this.lastUsageDates.isEmpty()) {
                    return 0L;
                }
                Set<Map.Entry<File, Long>> entrySet = this.lastUsageDates.entrySet();
                synchronized (this.lastUsageDates) {
                    file = null;
                    Long l = null;
                    for (Map.Entry<File, Long> entry : entrySet) {
                        if (file == null) {
                            file = entry.getKey();
                            l = entry.getValue();
                        } else {
                            Long value = entry.getValue();
                            if (value.longValue() < l.longValue()) {
                                file = entry.getKey();
                                l = value;
                            }
                        }
                    }
                }
                long calculateSize = calculateSize(file);
                if (file.delete()) {
                    this.lastUsageDates.remove(file);
                    return calculateSize;
                }
                return calculateSize;
            } catch (Exception e) {
                e.printStackTrace();
                return 0L;
            }
        }

        private ALocalCacheManager(File file, long j, int i) {
            this.lastUsageDates = DesugarCollections.synchronizedMap(new HashMap());
            this.cacheDir = file;
            this.sizeLimit = j;
            this.countLimit = i;
            this.cacheSize = new AtomicLong();
            this.cacheCount = new AtomicInteger();
            calculateCacheSizeAndCacheCount();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Utils {
        private static final char mSeparator = ' ';

        private Utils() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] Bitmap2Bytes(Bitmap bitmap) {
            if (bitmap == null) {
                return null;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Bitmap Bytes2Bimap(byte[] bArr) {
            if (bArr.length == 0) {
                return null;
            }
            return BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Drawable bitmap2Drawable(Bitmap bitmap) {
            if (bitmap == null) {
                return null;
            }
            return new BitmapDrawable(bitmap);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String clearDateInfo(String str) {
            return (str == null || !hasDateInfo(str.getBytes())) ? str : str.substring(str.indexOf(32) + 1, str.length());
        }

        private static byte[] copyOfRange(byte[] bArr, int i, int i2) {
            int i3 = i2 - i;
            if (i3 >= 0) {
                byte[] bArr2 = new byte[i3];
                System.arraycopy(bArr, i, bArr2, 0, Math.min(bArr.length - i, i3));
                return bArr2;
            }
            throw new IllegalArgumentException(i + " > " + i2);
        }

        private static String createDateInfo(int i) {
            String str = System.currentTimeMillis() + "";
            while (str.length() < 13) {
                str = "0".concat(str);
            }
            return str + "-" + i + mSeparator;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Bitmap drawable2Bitmap(Drawable drawable) {
            Bitmap.Config config;
            if (drawable == null) {
                return null;
            }
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (drawable.getOpacity() != -1) {
                config = Bitmap.Config.ARGB_8888;
            } else {
                config = Bitmap.Config.RGB_565;
            }
            Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, config);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            drawable.draw(canvas);
            return createBitmap;
        }

        private static String[] getDateInfoFromDate(byte[] bArr) {
            if (hasDateInfo(bArr)) {
                return new String[]{new String(copyOfRange(bArr, 0, 13)), new String(copyOfRange(bArr, 14, indexOf(bArr, mSeparator)))};
            }
            return null;
        }

        private static boolean hasDateInfo(byte[] bArr) {
            if (bArr != null && bArr.length > 15 && bArr[13] == 45 && indexOf(bArr, mSeparator) > 14) {
                try {
                    Long.valueOf(new String(copyOfRange(bArr, 0, 13)));
                    return true;
                } catch (Exception unused) {
                }
            }
            return false;
        }

        private static int indexOf(byte[] bArr, char c) {
            for (int i = 0; i < bArr.length; i++) {
                if (bArr[i] == c) {
                    return i;
                }
            }
            return -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isDue(String str) {
            return isDue(str.getBytes());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] newByteArrayWithDateInfo(int i, byte[] bArr) {
            byte[] bytes = createDateInfo(i).getBytes();
            byte[] bArr2 = new byte[bytes.length + bArr.length];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
            return bArr2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String newStringWithDateInfo(int i, String str) {
            return createDateInfo(i) + str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isDue(byte[] bArr) {
            try {
                String[] dateInfoFromDate = getDateInfoFromDate(bArr);
                if (dateInfoFromDate != null && dateInfoFromDate.length == 2) {
                    String str = dateInfoFromDate[0];
                    while (str.startsWith("0")) {
                        str = str.substring(1, str.length());
                    }
                    if (System.currentTimeMillis() > (Long.valueOf(dateInfoFromDate[1]).longValue() * 1000) + Long.valueOf(str).longValue()) {
                        return true;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] clearDateInfo(byte[] bArr) {
            return hasDateInfo(bArr) ? copyOfRange(bArr, indexOf(bArr, mSeparator) + 1, bArr.length) : bArr;
        }
    }

    private ALocalCache(File file, long j, int i) {
        try {
            if (!file.exists() && !file.mkdirs()) {
                file.getAbsolutePath();
            }
            try {
                this.mCache = new ALocalCacheManager(file, j, i);
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
        }
    }

    @Nullable
    public static ALocalCache get(Context context) {
        return get(context, 50000000L, Integer.MAX_VALUE);
    }

    private static String myPid() {
        return "_" + Process.myPid();
    }

    public void clear() {
        this.mCache.clear();
    }

    public File file(String str) {
        File newFile = this.mCache.newFile(str);
        if (newFile.exists()) {
            return newFile;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x005c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] getAsBinary(java.lang.String r6) {
        /*
            r5 = this;
            com.changdu.component.pay.base.internal.ALocalCache$ALocalCacheManager r0 = r5.mCache
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            java.io.File r0 = com.changdu.component.pay.base.internal.ALocalCache.ALocalCacheManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0, r6)     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L47
            boolean r2 = r0.exists()     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L47
            if (r2 != 0) goto L11
            return r1
        L11:
            java.io.RandomAccessFile r2 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L47
            java.lang.String r3 = "r"
            r2.<init>(r0, r3)     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L47
            long r3 = r2.length()     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37
            int r0 = (int) r3     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37
            r2.read(r0)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37
            boolean r3 = com.changdu.component.pay.base.internal.ALocalCache.Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(r0)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37
            if (r3 != 0) goto L39
            byte[] r6 = com.changdu.component.pay.base.internal.ALocalCache.Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37
            r2.close()     // Catch: java.io.IOException -> L30
            return r6
        L30:
            r0 = move-exception
            r0.printStackTrace()
            return r6
        L35:
            r6 = move-exception
            goto L5a
        L37:
            r6 = move-exception
            goto L49
        L39:
            r2.close()     // Catch: java.io.IOException -> L3d
            goto L41
        L3d:
            r0 = move-exception
            r0.printStackTrace()
        L41:
            r5.remove(r6)
            return r1
        L45:
            r6 = move-exception
            goto L59
        L47:
            r6 = move-exception
            r2 = r1
        L49:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L57
            if (r2 == 0) goto L56
            r2.close()     // Catch: java.io.IOException -> L52
            goto L56
        L52:
            r6 = move-exception
            r6.printStackTrace()
        L56:
            return r1
        L57:
            r6 = move-exception
            r1 = r2
        L59:
            r2 = r1
        L5a:
            if (r2 == 0) goto L64
            r2.close()     // Catch: java.io.IOException -> L60
            goto L64
        L60:
            r0 = move-exception
            r0.printStackTrace()
        L64:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.base.internal.ALocalCache.getAsBinary(java.lang.String):byte[]");
    }

    public Bitmap getAsBitmap(String str) {
        if (getAsBinary(str) != null) {
            return Utils.Bytes2Bimap(getAsBinary(str));
        }
        return null;
    }

    public Drawable getAsDrawable(String str) {
        if (getAsBinary(str) != null) {
            return Utils.bitmap2Drawable(Utils.Bytes2Bimap(getAsBinary(str)));
        }
        return null;
    }

    public JSONArray getAsJSONArray(String str) {
        try {
            return new JSONArray(getAsString(str));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public JSONObject getAsJSONObject(String str) {
        try {
            return new JSONObject(getAsString(str));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0055 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x005f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getAsObject(java.lang.String r5) {
        /*
            r4 = this;
            byte[] r5 = r4.getAsBinary(r5)
            r0 = 0
            if (r5 == 0) goto L68
            java.io.ByteArrayInputStream r1 = new java.io.ByteArrayInputStream     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L38
            r1.<init>(r5)     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L38
            java.io.ObjectInputStream r5 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L2f
            r5.<init>(r1)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L2f
            java.lang.Object r0 = r5.readObject()     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L2b
            r1.close()     // Catch: java.io.IOException -> L19
            goto L1d
        L19:
            r1 = move-exception
            r1.printStackTrace()
        L1d:
            r5.close()     // Catch: java.io.IOException -> L21
            goto L25
        L21:
            r5 = move-exception
            r5.printStackTrace()
        L25:
            return r0
        L26:
            r0 = move-exception
        L27:
            r3 = r0
            r0 = r5
            r5 = r3
            goto L53
        L2b:
            r2 = move-exception
            goto L3b
        L2d:
            r5 = move-exception
            goto L53
        L2f:
            r5 = move-exception
            r2 = r5
            r5 = r0
            goto L3b
        L33:
            r5 = move-exception
            r1 = r0
            r0 = r5
            r5 = r1
            goto L27
        L38:
            r2 = move-exception
            r5 = r0
            r1 = r5
        L3b:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L26
            if (r1 == 0) goto L48
            r1.close()     // Catch: java.io.IOException -> L44
            goto L48
        L44:
            r1 = move-exception
            r1.printStackTrace()
        L48:
            if (r5 == 0) goto L52
            r5.close()     // Catch: java.io.IOException -> L4e
            goto L52
        L4e:
            r5 = move-exception
            r5.printStackTrace()
        L52:
            return r0
        L53:
            if (r1 == 0) goto L5d
            r1.close()     // Catch: java.io.IOException -> L59
            goto L5d
        L59:
            r1 = move-exception
            r1.printStackTrace()
        L5d:
            if (r0 == 0) goto L67
            r0.close()     // Catch: java.io.IOException -> L63
            goto L67
        L63:
            r0 = move-exception
            r0.printStackTrace()
        L67:
            throw r5
        L68:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.base.internal.ALocalCache.getAsObject(java.lang.String):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x006d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getAsString(java.lang.String r6) {
        /*
            r5 = this;
            com.changdu.component.pay.base.internal.ALocalCache$ALocalCacheManager r0 = r5.mCache
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            java.io.File r0 = com.changdu.component.pay.base.internal.ALocalCache.ALocalCacheManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0, r6)
            boolean r2 = r0.exists()
            if (r2 != 0) goto L11
            return r1
        L11:
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L56 java.io.IOException -> L58
            java.io.FileReader r3 = new java.io.FileReader     // Catch: java.lang.Throwable -> L56 java.io.IOException -> L58
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L56 java.io.IOException -> L58
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L56 java.io.IOException -> L58
            java.lang.String r0 = ""
        L1d:
            java.lang.String r3 = r2.readLine()     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L35
            if (r3 == 0) goto L37
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L35
            r4.<init>()     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L35
            r4.append(r0)     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L35
            r4.append(r3)     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L35
            java.lang.String r0 = r4.toString()     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L35
            goto L1d
        L33:
            r6 = move-exception
            goto L6b
        L35:
            r6 = move-exception
            goto L5a
        L37:
            boolean r3 = com.changdu.component.pay.base.internal.ALocalCache.Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L35
            if (r3 != 0) goto L4a
            java.lang.String r6 = com.changdu.component.pay.base.internal.ALocalCache.Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L35
            r2.close()     // Catch: java.io.IOException -> L45
            return r6
        L45:
            r0 = move-exception
            r0.printStackTrace()
            return r6
        L4a:
            r2.close()     // Catch: java.io.IOException -> L4e
            goto L52
        L4e:
            r0 = move-exception
            r0.printStackTrace()
        L52:
            r5.remove(r6)
            return r1
        L56:
            r6 = move-exception
            goto L6a
        L58:
            r6 = move-exception
            r2 = r1
        L5a:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L68
            if (r2 == 0) goto L67
            r2.close()     // Catch: java.io.IOException -> L63
            goto L67
        L63:
            r6 = move-exception
            r6.printStackTrace()
        L67:
            return r1
        L68:
            r6 = move-exception
            r1 = r2
        L6a:
            r2 = r1
        L6b:
            if (r2 == 0) goto L75
            r2.close()     // Catch: java.io.IOException -> L71
            goto L75
        L71:
            r0 = move-exception
            r0.printStackTrace()
        L75:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.base.internal.ALocalCache.getAsString(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0076 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getAsStringWithNewLine(java.lang.String r6) {
        /*
            r5 = this;
            com.changdu.component.pay.base.internal.ALocalCache$ALocalCacheManager r0 = r5.mCache
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            java.io.File r0 = com.changdu.component.pay.base.internal.ALocalCache.ALocalCacheManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0, r6)
            boolean r2 = r0.exists()
            if (r2 != 0) goto L11
            return r1
        L11:
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L5f java.io.IOException -> L61
            java.io.FileReader r3 = new java.io.FileReader     // Catch: java.lang.Throwable -> L5f java.io.IOException -> L61
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L5f java.io.IOException -> L61
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L5f java.io.IOException -> L61
            java.lang.String r0 = ""
        L1d:
            java.lang.String r3 = r2.readLine()     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3a
            if (r3 == 0) goto L3c
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3a
            r4.<init>()     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3a
            r4.append(r0)     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3a
            r4.append(r3)     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3a
            java.lang.String r0 = "\n"
            r4.append(r0)     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3a
            java.lang.String r0 = r4.toString()     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3a
            goto L1d
        L38:
            r6 = move-exception
            goto L74
        L3a:
            r6 = move-exception
            goto L63
        L3c:
            boolean r3 = com.changdu.component.pay.base.internal.ALocalCache.Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3a
            if (r3 != 0) goto L53
            java.lang.String r6 = com.changdu.component.pay.base.internal.ALocalCache.Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3a
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3a
            r2.close()     // Catch: java.io.IOException -> L4e
            return r6
        L4e:
            r0 = move-exception
            r0.printStackTrace()
            return r6
        L53:
            r2.close()     // Catch: java.io.IOException -> L57
            goto L5b
        L57:
            r0 = move-exception
            r0.printStackTrace()
        L5b:
            r5.remove(r6)
            return r1
        L5f:
            r6 = move-exception
            goto L73
        L61:
            r6 = move-exception
            r2 = r1
        L63:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L71
            if (r2 == 0) goto L70
            r2.close()     // Catch: java.io.IOException -> L6c
            goto L70
        L6c:
            r6 = move-exception
            r6.printStackTrace()
        L70:
            return r1
        L71:
            r6 = move-exception
            r1 = r2
        L73:
            r2 = r1
        L74:
            if (r2 == 0) goto L7e
            r2.close()     // Catch: java.io.IOException -> L7a
            goto L7e
        L7a:
            r0 = move-exception
            r0.printStackTrace()
        L7e:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.base.internal.ALocalCache.getAsStringWithNewLine(java.lang.String):java.lang.String");
    }

    public void put(String str, String str2) {
        BufferedWriter bufferedWriter;
        ALocalCacheManager aLocalCacheManager = this.mCache;
        if (aLocalCacheManager == null) {
            return;
        }
        File newFile = aLocalCacheManager.newFile(str);
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                bufferedWriter = new BufferedWriter(new FileWriter(newFile), 1024);
            } catch (Throwable th) {
                th = th;
                bufferedWriter = bufferedWriter2;
            }
        } catch (IOException e) {
            e = e;
        }
        try {
            bufferedWriter.write(str2);
            try {
                bufferedWriter.flush();
                bufferedWriter.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } catch (IOException e3) {
            e = e3;
            bufferedWriter2 = bufferedWriter;
            e.printStackTrace();
            if (bufferedWriter2 != null) {
                try {
                    bufferedWriter2.flush();
                    bufferedWriter2.close();
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            this.mCache.put(newFile);
        } catch (Throwable th2) {
            th = th2;
            if (bufferedWriter != null) {
                try {
                    bufferedWriter.flush();
                    bufferedWriter.close();
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
            this.mCache.put(newFile);
            throw th;
        }
        this.mCache.put(newFile);
    }

    public boolean remove(String str) {
        return this.mCache.remove(str);
    }

    @Nullable
    public static ALocalCache get(Context context, String str) {
        return get(new File(context.getFilesDir(), str), 50000000L, Integer.MAX_VALUE);
    }

    @Nullable
    public static ALocalCache get(File file) {
        return get(file, 50000000L, Integer.MAX_VALUE);
    }

    @Nullable
    public static ALocalCache get(Context context, long j, int i) {
        try {
            return get(new File(context.getFilesDir(), "ALocalCache"), j, i);
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    public static ALocalCache get(File file, long j, int i) {
        try {
            Map<String, ALocalCache> map = mInstanceMap;
            ALocalCache aLocalCache = map.get(file.getAbsoluteFile() + myPid());
            if (aLocalCache == null) {
                ALocalCache aLocalCache2 = new ALocalCache(file, j, i);
                Map<String, ALocalCache> map2 = mInstanceMap;
                map2.put(file.getAbsolutePath() + myPid(), aLocalCache2);
                return aLocalCache2;
            }
            if (!file.exists() && !file.mkdirs()) {
                file.getAbsolutePath();
            }
            return aLocalCache;
        } catch (Exception unused) {
            return null;
        }
    }

    public void put(String str, String str2, int i) {
        put(str, Utils.newStringWithDateInfo(i, str2));
    }

    public void put(String str, JSONObject jSONObject) {
        put(str, jSONObject.toString());
    }

    public void put(String str, JSONObject jSONObject, int i) {
        put(str, jSONObject.toString(), i);
    }

    public void put(String str, JSONArray jSONArray) {
        put(str, jSONArray.toString());
    }

    public void put(String str, JSONArray jSONArray, int i) {
        put(str, jSONArray.toString(), i);
    }

    public void put(String str, byte[] bArr) {
        FileOutputStream fileOutputStream;
        ALocalCacheManager aLocalCacheManager = this.mCache;
        if (aLocalCacheManager == null) {
            return;
        }
        File newFile = aLocalCacheManager.newFile(str);
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(newFile);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            fileOutputStream.write(bArr);
            try {
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        } catch (Exception e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            this.mCache.put(newFile);
        } catch (Throwable th2) {
            th = th2;
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            this.mCache.put(newFile);
            throw th;
        }
        this.mCache.put(newFile);
    }

    public void put(String str, byte[] bArr, int i) {
        put(str, Utils.newByteArrayWithDateInfo(i, bArr));
    }

    public void put(String str, Serializable serializable) {
        put(str, serializable, -1);
    }

    public void put(String str, Serializable serializable, int i) {
        ObjectOutputStream objectOutputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        ObjectOutputStream objectOutputStream2 = null;
        try {
            try {
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                } catch (Throwable th) {
                    th = th;
                    objectOutputStream = objectOutputStream2;
                }
            } catch (Exception e) {
                e = e;
            }
            try {
                objectOutputStream.writeObject(serializable);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                if (i != -1) {
                    put(str, byteArray, i);
                } else {
                    put(str, byteArray);
                }
                objectOutputStream.close();
            } catch (Exception e2) {
                e = e2;
                objectOutputStream2 = objectOutputStream;
                e.printStackTrace();
                if (objectOutputStream2 != null) {
                    objectOutputStream2.close();
                }
            } catch (Throwable th2) {
                th = th2;
                if (objectOutputStream != null) {
                    try {
                        objectOutputStream.close();
                    } catch (IOException unused) {
                    }
                }
                throw th;
            }
        } catch (IOException unused2) {
        }
    }

    public void put(String str, Bitmap bitmap) {
        put(str, Utils.Bitmap2Bytes(bitmap));
    }

    public void put(String str, Bitmap bitmap, int i) {
        put(str, Utils.Bitmap2Bytes(bitmap), i);
    }

    public void put(String str, Drawable drawable) {
        put(str, Utils.drawable2Bitmap(drawable));
    }

    public void put(String str, Drawable drawable, int i) {
        put(str, Utils.drawable2Bitmap(drawable), i);
    }
}

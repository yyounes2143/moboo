package com.tencent.thumbplayer.tcmedia.core.downloadproxy.utils;

import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPDLProxyLogListener;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TPDLProxyUtils {
    private static final String FILE_NAME = "TPDLProxyUtils";

    public static String byteArrayToString(byte[] bArr) {
        if (bArr != null) {
            try {
                return new String(bArr, "UTF-8");
            } catch (Throwable th) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "byteArrayToString failed, error:" + th.toString());
                return "";
            }
        }
        return "";
    }

    public static int objectToInt(Object obj, int i) {
        if (obj == null) {
            return i;
        }
        try {
            return ((Integer) obj).intValue();
        } catch (Throwable th) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "object to int failed, error:" + th.toString());
            return i;
        }
    }

    public static long objectToLong(Object obj, long j) {
        if (obj == null) {
            return j;
        }
        try {
            return ((Long) obj).longValue();
        } catch (Throwable th) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "object to long failed, error:" + th.toString());
            return j;
        }
    }

    public static String serialize(Object obj) {
        ByteArrayOutputStream byteArrayOutputStream;
        ObjectOutputStream objectOutputStream;
        ObjectOutputStream objectOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream = null;
        }
        try {
            objectOutputStream.writeObject(obj);
            String byteArrayOutputStream2 = byteArrayOutputStream.toString("ISO-8859-1");
            try {
                objectOutputStream.close();
            } catch (Throwable th3) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "obj serialize to string  objectOutputStream close, error:" + th3.toString());
            }
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th4) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "obj serialize to string byteArrayOutputStream close, error:" + th4.toString());
            }
            return byteArrayOutputStream2;
        } catch (Throwable th5) {
            th = th5;
            objectOutputStream2 = objectOutputStream;
            try {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "serialize obj, error:" + th.toString());
                if (objectOutputStream2 != null) {
                    try {
                        objectOutputStream2.close();
                    } catch (Throwable th6) {
                        TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "obj serialize to string  objectOutputStream close, error:" + th6.toString());
                    }
                }
                try {
                    byteArrayOutputStream.close();
                    return "";
                } catch (Throwable th7) {
                    TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "obj serialize to string byteArrayOutputStream close, error:" + th7.toString());
                    return "";
                }
            } catch (Throwable th8) {
                if (objectOutputStream2 != null) {
                    try {
                        objectOutputStream2.close();
                    } catch (Throwable th9) {
                        TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "obj serialize to string  objectOutputStream close, error:" + th9.toString());
                    }
                }
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th10) {
                    TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "obj serialize to string byteArrayOutputStream close, error:" + th10.toString());
                }
                throw th8;
            }
        }
    }

    public static Object serializeToObject(String str) {
        ObjectInputStream objectInputStream;
        ByteArrayInputStream byteArrayInputStream;
        try {
            byteArrayInputStream = new ByteArrayInputStream(str.getBytes("ISO-8859-1"));
            try {
                objectInputStream = new ObjectInputStream(byteArrayInputStream);
            } catch (Throwable th) {
                th = th;
                objectInputStream = null;
            }
        } catch (Throwable th2) {
            th = th2;
            objectInputStream = null;
            byteArrayInputStream = null;
        }
        try {
            Object readObject = objectInputStream.readObject();
            try {
                objectInputStream.close();
            } catch (Throwable th3) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "serialize to obj objectInputStream close, error:" + th3.toString());
            }
            try {
                byteArrayInputStream.close();
            } catch (Throwable th4) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "serialize to obj byteArrayInputStream close, error:" + th4.toString());
            }
            return readObject;
        } catch (Throwable th5) {
            th = th5;
            try {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "serialize to obj , error:" + th.toString());
                return null;
            } finally {
                if (objectInputStream != null) {
                    try {
                        objectInputStream.close();
                    } catch (Throwable th6) {
                        TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "serialize to obj objectInputStream close, error:" + th6.toString());
                    }
                }
                if (byteArrayInputStream != null) {
                    try {
                        byteArrayInputStream.close();
                    } catch (Throwable th7) {
                        TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "serialize to obj byteArrayInputStream close, error:" + th7.toString());
                    }
                }
            }
        }
    }
}

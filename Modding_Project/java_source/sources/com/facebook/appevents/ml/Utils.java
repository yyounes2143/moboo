package com.facebook.appevents.ml;

import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import com.facebook.FacebookSdk;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0006\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J%\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\b2\u0006\u0010\u0007\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\t¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/facebook/appevents/ml/Utils;", "", "<init>", "()V", "Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/io/File;", "file", "", "", "Lcom/facebook/appevents/ml/MTensor;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)Ljava/util/Map;", "texts", "", "maxLen", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;I)[I", "str", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class Utils {
    @NotNull
    public static final Utils INSTANCE = new Utils();

    @JvmStatic
    @Nullable
    public static final Map<String, MTensor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) {
        Map<String, MTensor> map;
        Map<String, MTensor> map2 = null;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Utils.class)) {
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            int available = fileInputStream.available();
            DataInputStream dataInputStream = new DataInputStream(fileInputStream);
            byte[] bArr = new byte[available];
            dataInputStream.readFully(bArr);
            dataInputStream.close();
            if (available < 4) {
                return null;
            }
            int i = 0;
            ByteBuffer wrap = ByteBuffer.wrap(bArr, 0, 4);
            wrap.order(ByteOrder.LITTLE_ENDIAN);
            int i2 = wrap.getInt();
            int i3 = i2 + 4;
            if (available < i3) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(new String(bArr, 4, i2, Charsets.UTF_8));
            JSONArray names = jSONObject.names();
            int length = names.length();
            String[] strArr = new String[length];
            int i4 = length - 1;
            if (i4 >= 0) {
                int i5 = 0;
                while (true) {
                    int i6 = i5 + 1;
                    strArr[i5] = names.getString(i5);
                    if (i6 > i4) {
                        break;
                    }
                    i5 = i6;
                }
            }
            ArraysKt.sort((Object[]) strArr);
            HashMap hashMap = new HashMap();
            int i7 = 0;
            while (i7 < length) {
                String str = strArr[i7];
                i7++;
                if (str != null) {
                    JSONArray jSONArray = jSONObject.getJSONArray(str);
                    int length2 = jSONArray.length();
                    int[] iArr = new int[length2];
                    int i8 = length2 - 1;
                    int i9 = 1;
                    map = map2;
                    if (i8 >= 0) {
                        int i10 = i;
                        while (true) {
                            int i11 = i10 + 1;
                            try {
                                int i12 = jSONArray.getInt(i10);
                                iArr[i10] = i12;
                                i9 *= i12;
                                if (i11 > i8) {
                                    break;
                                }
                                i10 = i11;
                            } catch (Exception unused) {
                                return map;
                            } catch (Throwable th) {
                                th = th;
                                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, Utils.class);
                                return map;
                            }
                        }
                    }
                    int i13 = i9 * 4;
                    int i14 = i3 + i13;
                    if (i14 > available) {
                        return map;
                    }
                    ByteBuffer wrap2 = ByteBuffer.wrap(bArr, i3, i13);
                    wrap2.order(ByteOrder.LITTLE_ENDIAN);
                    MTensor mTensor = new MTensor(iArr);
                    wrap2.asFloatBuffer().get(mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), 0, i9);
                    hashMap.put(str, mTensor);
                    i3 = i14;
                    i = 0;
                    map2 = map;
                }
            }
            return hashMap;
        } catch (Exception unused2) {
            return map2;
        } catch (Throwable th2) {
            th = th2;
            map = map2;
        }
    }

    @JvmStatic
    @Nullable
    public static final File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Utils.class)) {
            return null;
        }
        try {
            File file = new File(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getFilesDir(), "facebook_ml/");
            if (!file.exists()) {
                if (!file.mkdirs()) {
                    return null;
                }
            }
            return file;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, Utils.class);
            return null;
        }
    }

    @NotNull
    public final int[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, int i) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            int[] iArr = new int[i];
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
            Charset forName = Charset.forName("UTF-8");
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                byte[] bytes = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getBytes(forName);
                if (i > 0) {
                    int i2 = 0;
                    while (true) {
                        int i3 = i2 + 1;
                        if (i2 < bytes.length) {
                            iArr[i2] = bytes[i2] & 255;
                        } else {
                            iArr[i2] = 0;
                        }
                        if (i3 >= i) {
                            break;
                        }
                        i2 = i3;
                    }
                }
                return iArr;
            }
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        int i;
        boolean z;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            int length = str.length() - 1;
            int i2 = 0;
            boolean z2 = false;
            while (i2 <= length) {
                if (!z2) {
                    i = i2;
                } else {
                    i = length;
                }
                if (Intrinsics.compare((int) str.charAt(i), 32) <= 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z2) {
                    if (!z) {
                        z2 = true;
                    } else {
                        i2++;
                    }
                } else if (!z) {
                    break;
                } else {
                    length--;
                }
            }
            Object[] array = new Regex("\\s+").split(str.subSequence(i2, length + 1).toString(), 0).toArray(new String[0]);
            if (array != null) {
                return TextUtils.join(" ", (String[]) array);
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }
}

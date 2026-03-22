package okhttp3.internal.http2;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.unity3d.services.core.network.core.OkHttp3Client;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal.Util;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J5\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u00128\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0013R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0016R\u001c\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0016R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u0016¨\u0006\u001b"}, d2 = {"Lokhttp3/internal/http2/Http2;", "", "<init>", "()V", "", "inbound", "", "streamId", SessionDescription.ATTR_LENGTH, "type", "flags", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ZIIII)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(II)Ljava/lang/String;", "Lokio/ByteString;", "Lokio/ByteString;", "CONNECTION_PREFACE", "", "[Ljava/lang/String;", "FRAME_NAMES", "FLAGS", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "BINARY", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Http2 {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String[] f12791Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Http2 INSTANCE = new Http2();
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ByteString f12794Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ByteString.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String[] f12793Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String[] f12792Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new String[64];

    static {
        String[] strArr = new String[256];
        int i = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            strArr[i2] = StringsKt.replace$default(Util.Wwwwwwwwwwwwwww("%8s", Integer.toBinaryString(i2)), ' ', '0', false, 4, (Object) null);
        }
        f12791Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = strArr;
        String[] strArr2 = f12792Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        int i3 = iArr[0];
        strArr2[i3 | 8] = Intrinsics.stringPlus(strArr2[i3], "|PADDED");
        strArr2[4] = "END_HEADERS";
        strArr2[32] = "PRIORITY";
        strArr2[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        int i4 = 0;
        while (i4 < 3) {
            int i5 = iArr2[i4];
            i4++;
            int i6 = iArr[0];
            String[] strArr3 = f12792Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i7 = i6 | i5;
            StringBuilder sb = new StringBuilder();
            sb.append((Object) strArr3[i6]);
            sb.append('|');
            sb.append((Object) strArr3[i5]);
            strArr3[i7] = sb.toString();
            strArr3[i7 | 8] = ((Object) strArr3[i6]) + '|' + ((Object) strArr3[i5]) + "|PADDED";
        }
        int length = f12792Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length;
        while (i < length) {
            int i8 = i + 1;
            String[] strArr4 = f12792Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (strArr4[i] == null) {
                strArr4[i] = f12791Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i];
            }
            i = i8;
        }
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, int i, int i2, int i3, int i4) {
        String str;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i3);
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i3, i4);
        if (z) {
            str = "<<";
        } else {
            str = ">>";
        }
        return Util.Wwwwwwwwwwwwwww("%s 0x%08x %5d %-13s %s", str, Integer.valueOf(i), Integer.valueOf(i2), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        String[] strArr = f12793Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i < strArr.length) {
            return strArr[i];
        }
        return Util.Wwwwwwwwwwwwwww("0x%02x", Integer.valueOf(i));
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) {
        String str;
        if (i2 == 0) {
            return "";
        }
        if (i != 2 && i != 3) {
            if (i != 4 && i != 6) {
                if (i != 7 && i != 8) {
                    String[] strArr = f12792Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (i2 < strArr.length) {
                        str = strArr[i2];
                    } else {
                        str = f12791Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i2];
                    }
                    String str2 = str;
                    if (i == 5 && (i2 & 4) != 0) {
                        return StringsKt.replace$default(str2, "HEADERS", "PUSH_PROMISE", false, 4, (Object) null);
                    }
                    if (i == 0 && (i2 & 32) != 0) {
                        return StringsKt.replace$default(str2, "PRIORITY", "COMPRESSED", false, 4, (Object) null);
                    }
                    return str2;
                }
            } else if (i2 == 1) {
                return "ACK";
            } else {
                return f12791Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i2];
            }
        }
        return f12791Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i2];
    }
}

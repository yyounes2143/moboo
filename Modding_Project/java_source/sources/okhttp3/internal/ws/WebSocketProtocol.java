package okhttp3.internal.ws;

import com.unity3d.services.core.network.core.OkHttp3Client;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0010\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lokhttp3/internal/ws/WebSocketProtocol;", "", "<init>", "()V", "Lokio/Buffer$UnsafeCursor;", "cursor", "", "key", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer$UnsafeCursor;[B)V", "", "code", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)V", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class WebSocketProtocol {
    @NotNull
    public static final WebSocketProtocol INSTANCE = new WebSocketProtocol();

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        throw new IllegalArgumentException(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.toString());
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer.UnsafeCursor unsafeCursor, @NotNull byte[] bArr) {
        int length = bArr.length;
        int i = 0;
        do {
            byte[] bArr2 = unsafeCursor.f13126Wwwwwwwwwwwwwwwwwwwww;
            int i2 = unsafeCursor.f13125Wwwwwwwwwwwwwwwwwwww;
            int i3 = unsafeCursor.f13124Wwwwwwwwwwwwwwwwwww;
            if (bArr2 != null) {
                while (i2 < i3) {
                    int i4 = i % length;
                    bArr2[i2] = (byte) (bArr2[i2] ^ bArr[i4]);
                    i2++;
                    i = i4 + 1;
                }
            }
        } while (unsafeCursor.Wwwwwwwwwwwwwwwwwwwwwwwwwww() != -1);
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (i >= 1000 && i < 5000) {
            if ((1004 <= i && i < 1007) || (1015 <= i && i < 3000)) {
                return "Code " + i + " is reserved and may not be used.";
            }
            return null;
        }
        return Intrinsics.stringPlus("Code must be in range [1000,5000): ", Integer.valueOf(i));
    }
}

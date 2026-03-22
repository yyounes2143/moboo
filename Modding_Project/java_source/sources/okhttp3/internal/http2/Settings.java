package okhttp3.internal.http2;

import com.unity3d.services.core.network.core.OkHttp3Client;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0015\n\u0002\b\b\u0018\u0000  2\u00020\u0001:\u0001 B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J \u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0086\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0086\u0002¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00020\u0004¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0004¢\u0006\u0004\b\u0010\u0010\u000fJ\u0015\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0004¢\u0006\u0004\b\u0012\u0010\rJ\u0015\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0000¢\u0006\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0018\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0011\u0010\u001d\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u000fR\u0011\u0010\u001f\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u000f¨\u0006!"}, d2 = {"Lokhttp3/internal/http2/Settings;", "", "<init>", "()V", "", "id", "value", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(II)Lokhttp3/internal/http2/Settings;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)I", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "defaultValue", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "other", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/http2/Settings;)V", "I", "set", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "[I", "values", "headerTableSize", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "initialWindowSize", "Companion", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Settings {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int[] f12954Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new int[10];

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12955Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lokhttp3/internal/http2/Settings$Companion;", "", "()V", "COUNT", "", "DEFAULT_INITIAL_WINDOW_SIZE", "ENABLE_PUSH", "HEADER_TABLE_SIZE", "INITIAL_WINDOW_SIZE", "MAX_CONCURRENT_STREAMS", "MAX_FRAME_SIZE", "MAX_HEADER_LIST_SIZE", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Integer.bitCount(this.f12955Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @NotNull
    public final Settings Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) {
        if (i >= 0) {
            int[] iArr = this.f12954Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i < iArr.length) {
                this.f12955Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (1 << i) | this.f12955Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                iArr[i] = i2;
            }
        }
        return this;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Settings settings) {
        int i = 0;
        while (i < 10) {
            int i2 = i + 1;
            if (settings.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(i)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww(i, settings.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i));
            }
            i = i2;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (((1 << i) & this.f12955Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) != 0) {
            return true;
        }
        return false;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if ((this.f12955Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww & 32) != 0) {
            return this.f12954Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[5];
        }
        return i;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if ((this.f12955Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww & 16) != 0) {
            return this.f12954Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[4];
        }
        return Integer.MAX_VALUE;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if ((this.f12955Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww & 128) != 0) {
            return this.f12954Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[7];
        }
        return 65535;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if ((this.f12955Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww & 2) != 0) {
            return this.f12954Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[1];
        }
        return -1;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return this.f12954Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i];
    }
}

package okio;

import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.io.IOException;
import java.security.MessageDigest;
import javax.crypto.Mac;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00112\u00020\u00012\u00020\u0002:\u0001\u0011J\u001f\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bR\u0016\u0010\f\u001a\u0004\u0018\u00010\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lokio/HashingSource;", "Lokio/ForwardingSource;", "Lokio/Source;", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "Ljava/security/MessageDigest;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/security/MessageDigest;", "messageDigest", "Ljavax/crypto/Mac;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljavax/crypto/Mac;", TPDownloadProxyEnum.USER_MAC, "Companion", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class HashingSource extends ForwardingSource implements Source {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Mac f13184Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MessageDigest f13185Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokio/HashingSource$Companion;", "", "<init>", "()V", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    @Override // okio.ForwardingSource, okio.Source
    public long read(@NotNull Buffer buffer, long j) throws IOException {
        long read = super.read(buffer, j);
        if (read != -1) {
            long Kk = buffer.Kk() - read;
            long Kk2 = buffer.Kk();
            Segment segment = buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
            while (Kk2 > Kk) {
                segment = segment.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                Kk2 -= segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            while (Kk2 < buffer.Kk()) {
                int i = (int) ((segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + Kk) - Kk2);
                MessageDigest messageDigest = this.f13185Wwwwwwwwwwwwwwwwwwwwwwwww;
                if (messageDigest != null) {
                    messageDigest.update(segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - i);
                } else {
                    this.f13184Wwwwwwwwwwwwwwwwwwwwwwww.update(segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - i);
                }
                Kk2 += segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                Kk = Kk2;
            }
        }
        return read;
    }
}

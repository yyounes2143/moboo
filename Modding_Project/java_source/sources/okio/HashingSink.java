package okio;

import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.io.IOException;
import java.security.MessageDigest;
import javax.crypto.Mac;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00122\u00020\u00012\u00020\u0002:\u0001\u0012J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tR\u0016\u0010\r\u001a\u0004\u0018\u00010\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lokio/HashingSink;", "Lokio/ForwardingSink;", "Lokio/Sink;", "Lokio/Buffer;", "source", "", "byteCount", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)V", "Ljava/security/MessageDigest;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/security/MessageDigest;", "messageDigest", "Ljavax/crypto/Mac;", "Wwwwwwwwwwwwwwwwwwwwwww", "Ljavax/crypto/Mac;", TPDownloadProxyEnum.USER_MAC, "Companion", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHashingSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HashingSink.kt\nokio/HashingSink\n+ 2 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,148:1\n86#2:149\n*S KotlinDebug\n*F\n+ 1 HashingSink.kt\nokio/HashingSink\n*L\n75#1:149\n*E\n"})
/* loaded from: classes7.dex */
public final class HashingSink extends ForwardingSink implements Sink {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Mac f13182Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MessageDigest f13183Wwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokio/HashingSink$Companion;", "", "<init>", "()V", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    @Override // okio.ForwardingSink, okio.Sink
    public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer, long j) throws IOException {
        SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(buffer.Kk(), 0L, j);
        Segment segment = buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
        long j2 = 0;
        while (j2 < j) {
            int min = (int) Math.min(j - j2, segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            MessageDigest messageDigest = this.f13183Wwwwwwwwwwwwwwwwwwwwwwww;
            if (messageDigest != null) {
                messageDigest.update(segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, min);
            } else {
                this.f13182Wwwwwwwwwwwwwwwwwwwwwww.update(segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, min);
            }
            j2 += min;
            segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        super.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, j);
    }
}

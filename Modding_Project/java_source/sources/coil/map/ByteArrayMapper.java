package coil.map;

import coil.request.Options;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcoil/map/ByteArrayMapper;", "Lcoil/map/Mapper;", "", "Ljava/nio/ByteBuffer;", "<init>", "()V", "data", "Lcoil/request/Options;", "options", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([BLcoil/request/Options;)Ljava/nio/ByteBuffer;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ByteArrayMapper implements Mapper<byte[], ByteBuffer> {
    @Override // coil.map.Mapper
    @NotNull
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public ByteBuffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull byte[] bArr, @NotNull Options options) {
        return ByteBuffer.wrap(bArr);
    }
}

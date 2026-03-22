package defpackage;

import io.flutter.plugin.common.StandardMessageCodec;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0014J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u0014¨\u0006\u000f"}, d2 = {"LWakelockPlusApiCodec;", "Lio/flutter/plugin/common/StandardMessageCodec;", "<init>", "()V", "readValueOfType", "", "type", "", "buffer", "Ljava/nio/ByteBuffer;", "writeValue", "", "stream", "Ljava/io/ByteArrayOutputStream;", "value", "wakelock_plus_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* renamed from: WakelockPlusApiCodec  reason: default package */
/* loaded from: classes3.dex */
public final class WakelockPlusApiCodec extends StandardMessageCodec {
    @NotNull
    public static final WakelockPlusApiCodec INSTANCE = new WakelockPlusApiCodec();

    @Override // io.flutter.plugin.common.StandardMessageCodec
    @Nullable
    public Object readValueOfType(byte b, @NotNull ByteBuffer byteBuffer) {
        List<? extends Object> list;
        List<? extends Object> list2;
        if (b == Byte.MIN_VALUE) {
            Object readValue = readValue(byteBuffer);
            if (readValue instanceof List) {
                list2 = (List) readValue;
            } else {
                list2 = null;
            }
            if (list2 == null) {
                return null;
            }
            return IsEnabledMessage.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list2);
        } else if (b == -127) {
            Object readValue2 = readValue(byteBuffer);
            if (readValue2 instanceof List) {
                list = (List) readValue2;
            } else {
                list = null;
            }
            if (list == null) {
                return null;
            }
            return ToggleMessage.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list);
        } else {
            return super.readValueOfType(b, byteBuffer);
        }
    }

    @Override // io.flutter.plugin.common.StandardMessageCodec
    public void writeValue(@NotNull ByteArrayOutputStream byteArrayOutputStream, @Nullable Object obj) {
        if (obj instanceof IsEnabledMessage) {
            byteArrayOutputStream.write(128);
            writeValue(byteArrayOutputStream, ((IsEnabledMessage) obj).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        } else if (obj instanceof ToggleMessage) {
            byteArrayOutputStream.write(129);
            writeValue(byteArrayOutputStream, ((ToggleMessage) obj).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        } else {
            super.writeValue(byteArrayOutputStream, obj);
        }
    }
}

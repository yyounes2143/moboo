package io.flutter.plugins.webviewflutter;

import io.flutter.plugin.common.StandardMessageCodec;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0012\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0014J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u0014¨\u0006\u000f"}, d2 = {"Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec;", "Lio/flutter/plugin/common/StandardMessageCodec;", "<init>", "()V", "readValueOfType", "", "type", "", "buffer", "Ljava/nio/ByteBuffer;", "writeValue", "", "stream", "Ljava/io/ByteArrayOutputStream;", "value", "webview_flutter_android_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAndroidWebkitLibrary.g.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidWebkitLibrary.g.kt\nio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,6490:1\n1#2:6491\n*E\n"})
/* loaded from: classes6.dex */
public class AndroidWebkitLibraryPigeonCodec extends StandardMessageCodec {
    @Override // io.flutter.plugin.common.StandardMessageCodec
    @Nullable
    public Object readValueOfType(byte b, @NotNull ByteBuffer byteBuffer) {
        if (b == -127) {
            Long l = (Long) readValue(byteBuffer);
            if (l == null) {
                return null;
            }
            return FileChooserMode.Companion.ofRaw((int) l.longValue());
        } else if (b == -126) {
            Long l2 = (Long) readValue(byteBuffer);
            if (l2 == null) {
                return null;
            }
            return ConsoleMessageLevel.Companion.ofRaw((int) l2.longValue());
        } else if (b == -125) {
            Long l3 = (Long) readValue(byteBuffer);
            if (l3 == null) {
                return null;
            }
            return OverScrollMode.Companion.ofRaw((int) l3.longValue());
        } else if (b == -124) {
            Long l4 = (Long) readValue(byteBuffer);
            if (l4 == null) {
                return null;
            }
            return SslErrorType.Companion.ofRaw((int) l4.longValue());
        } else if (b == -123) {
            Long l5 = (Long) readValue(byteBuffer);
            if (l5 == null) {
                return null;
            }
            return MixedContentMode.Companion.ofRaw((int) l5.longValue());
        } else {
            return super.readValueOfType(b, byteBuffer);
        }
    }

    @Override // io.flutter.plugin.common.StandardMessageCodec
    public void writeValue(@NotNull ByteArrayOutputStream byteArrayOutputStream, @Nullable Object obj) {
        if (obj instanceof FileChooserMode) {
            byteArrayOutputStream.write(129);
            writeValue(byteArrayOutputStream, Integer.valueOf(((FileChooserMode) obj).getRaw()));
        } else if (obj instanceof ConsoleMessageLevel) {
            byteArrayOutputStream.write(130);
            writeValue(byteArrayOutputStream, Integer.valueOf(((ConsoleMessageLevel) obj).getRaw()));
        } else if (obj instanceof OverScrollMode) {
            byteArrayOutputStream.write(131);
            writeValue(byteArrayOutputStream, Integer.valueOf(((OverScrollMode) obj).getRaw()));
        } else if (obj instanceof SslErrorType) {
            byteArrayOutputStream.write(132);
            writeValue(byteArrayOutputStream, Integer.valueOf(((SslErrorType) obj).getRaw()));
        } else if (obj instanceof MixedContentMode) {
            byteArrayOutputStream.write(133);
            writeValue(byteArrayOutputStream, Integer.valueOf(((MixedContentMode) obj).getRaw()));
        } else {
            super.writeValue(byteArrayOutputStream, obj);
        }
    }
}

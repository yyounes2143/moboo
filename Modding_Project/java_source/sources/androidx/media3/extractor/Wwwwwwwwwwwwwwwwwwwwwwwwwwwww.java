package androidx.media3.extractor;

import android.net.Uri;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    static {
        ExtractorsFactory extractorsFactory = ExtractorsFactory.EMPTY;
    }

    public static /* synthetic */ Extractor[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new Extractor[0];
    }

    public static Extractor[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ExtractorsFactory extractorsFactory, Uri uri, Map map) {
        return extractorsFactory.createExtractors();
    }

    public static ExtractorsFactory Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ExtractorsFactory extractorsFactory, SubtitleParser.Factory factory) {
        return extractorsFactory;
    }

    @CanIgnoreReturnValue
    @Deprecated
    public static ExtractorsFactory Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ExtractorsFactory extractorsFactory, boolean z) {
        return extractorsFactory;
    }
}

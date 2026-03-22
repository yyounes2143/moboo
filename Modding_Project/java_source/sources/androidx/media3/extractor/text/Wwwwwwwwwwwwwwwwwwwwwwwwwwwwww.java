package androidx.media3.extractor.text;

import androidx.media3.common.util.Consumer;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.collect.ImmutableList;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    public static Subtitle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SubtitleParser subtitleParser, byte[] bArr, int i, int i2) {
        SubtitleParser.OutputOptions outputOptions;
        final ImmutableList.Builder builder = ImmutableList.builder();
        outputOptions = SubtitleParser.OutputOptions.ALL;
        Objects.requireNonNull(builder);
        subtitleParser.parse(bArr, i, i2, outputOptions, new Consumer() { // from class: androidx.media3.extractor.text.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                ImmutableList.Builder.this.add((ImmutableList.Builder) ((CuesWithTiming) obj));
            }
        });
        return new CuesWithTimingSubtitle(builder.build());
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SubtitleParser subtitleParser, byte[] bArr, SubtitleParser.OutputOptions outputOptions, Consumer consumer) {
        subtitleParser.parse(bArr, 0, bArr.length, outputOptions, consumer);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SubtitleParser subtitleParser) {
    }
}

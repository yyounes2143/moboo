package androidx.media3.extractor.text;

import androidx.annotation.Nullable;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
import androidx.media3.extractor.text.SubtitleParser;
import java.io.EOFException;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final class SubtitleTranscodingTrackOutput implements TrackOutput {
    private Format currentFormat;
    @Nullable
    private SubtitleParser currentSubtitleParser;
    private final TrackOutput delegate;
    private final SubtitleParser.Factory subtitleParserFactory;
    private final CueEncoder cueEncoder = new CueEncoder();
    private int sampleDataStart = 0;
    private int sampleDataEnd = 0;
    private byte[] sampleData = Util.EMPTY_BYTE_ARRAY;
    private final ParsableByteArray parsableScratch = new ParsableByteArray();

    public SubtitleTranscodingTrackOutput(TrackOutput trackOutput, SubtitleParser.Factory factory) {
        this.delegate = trackOutput;
        this.subtitleParserFactory = factory;
    }

    private void ensureSampleDataCapacity(int i) {
        byte[] bArr;
        int length = this.sampleData.length;
        int i2 = this.sampleDataEnd;
        if (length - i2 >= i) {
            return;
        }
        int i3 = i2 - this.sampleDataStart;
        int max = Math.max(i3 * 2, i + i3);
        byte[] bArr2 = this.sampleData;
        if (max <= bArr2.length) {
            bArr = bArr2;
        } else {
            bArr = new byte[max];
        }
        System.arraycopy(bArr2, this.sampleDataStart, bArr, 0, i3);
        this.sampleDataStart = 0;
        this.sampleDataEnd = i3;
        this.sampleData = bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void outputSample(CuesWithTiming cuesWithTiming, long j, int i) {
        boolean z;
        Assertions.checkStateNotNull(this.currentFormat);
        byte[] encode = this.cueEncoder.encode(cuesWithTiming.cues, cuesWithTiming.durationUs);
        this.parsableScratch.reset(encode);
        this.delegate.sampleData(this.parsableScratch, encode.length);
        long j2 = cuesWithTiming.startTimeUs;
        if (j2 == -9223372036854775807L) {
            if (this.currentFormat.subsampleOffsetUs == Long.MAX_VALUE) {
                z = true;
            } else {
                z = false;
            }
            Assertions.checkState(z);
        } else {
            long j3 = this.currentFormat.subsampleOffsetUs;
            if (j3 == Long.MAX_VALUE) {
                j += j2;
            } else {
                j = j2 + j3;
            }
        }
        this.delegate.sampleMetadata(j, i, encode.length, 0, null);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void format(Format format) {
        boolean z;
        SubtitleParser subtitleParser;
        Assertions.checkNotNull(format.sampleMimeType);
        if (MimeTypes.getTrackType(format.sampleMimeType) == 3) {
            z = true;
        } else {
            z = false;
        }
        Assertions.checkArgument(z);
        if (!format.equals(this.currentFormat)) {
            this.currentFormat = format;
            if (this.subtitleParserFactory.supportsFormat(format)) {
                subtitleParser = this.subtitleParserFactory.create(format);
            } else {
                subtitleParser = null;
            }
            this.currentSubtitleParser = subtitleParser;
        }
        if (this.currentSubtitleParser == null) {
            this.delegate.format(format);
        } else {
            this.delegate.format(format.buildUpon().setSampleMimeType(MimeTypes.APPLICATION_MEDIA3_CUES).setCodecs(format.sampleMimeType).setSubsampleOffsetUs(Long.MAX_VALUE).setCueReplacementBehavior(this.subtitleParserFactory.getCueReplacementBehavior(format)).build());
        }
    }

    public void resetSubtitleParser() {
        SubtitleParser subtitleParser = this.currentSubtitleParser;
        if (subtitleParser != null) {
            subtitleParser.reset();
        }
    }

    @Override // androidx.media3.extractor.TrackOutput
    public /* synthetic */ int sampleData(DataReader dataReader, int i, boolean z) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, dataReader, i, z);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void sampleMetadata(final long j, final int i, int i2, int i3, @Nullable TrackOutput.CryptoData cryptoData) {
        boolean z;
        if (this.currentSubtitleParser == null) {
            this.delegate.sampleMetadata(j, i, i2, i3, cryptoData);
            return;
        }
        if (cryptoData == null) {
            z = true;
        } else {
            z = false;
        }
        Assertions.checkArgument(z, "DRM on subtitles is not supported");
        int i4 = (this.sampleDataEnd - i3) - i2;
        this.currentSubtitleParser.parse(this.sampleData, i4, i2, SubtitleParser.OutputOptions.allCues(), new Consumer() { // from class: androidx.media3.extractor.text.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // androidx.media3.common.util.Consumer
            public final void accept(Object obj) {
                SubtitleTranscodingTrackOutput.this.outputSample((CuesWithTiming) obj, j, i);
            }
        });
        int i5 = i4 + i2;
        this.sampleDataStart = i5;
        if (i5 == this.sampleDataEnd) {
            this.sampleDataStart = 0;
            this.sampleDataEnd = 0;
        }
    }

    @Override // androidx.media3.extractor.TrackOutput
    public /* synthetic */ void sampleData(ParsableByteArray parsableByteArray, int i) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, parsableByteArray, i);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public int sampleData(DataReader dataReader, int i, boolean z, int i2) throws IOException {
        if (this.currentSubtitleParser == null) {
            return this.delegate.sampleData(dataReader, i, z, i2);
        }
        ensureSampleDataCapacity(i);
        int read = dataReader.read(this.sampleData, this.sampleDataEnd, i);
        if (read != -1) {
            this.sampleDataEnd += read;
            return read;
        } else if (z) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void sampleData(ParsableByteArray parsableByteArray, int i, int i2) {
        if (this.currentSubtitleParser == null) {
            this.delegate.sampleData(parsableByteArray, i, i2);
            return;
        }
        ensureSampleDataCapacity(i);
        parsableByteArray.readBytes(this.sampleData, this.sampleDataEnd, i);
        this.sampleDataEnd += i;
    }
}

package com.mbridge.msdk.playercommon.exoplayer2.extractor.wav;

import com.mbridge.msdk.playercommon.exoplayer2.ParserException;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorInput;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
final class WavHeaderReader {
    private static final String TAG = "WavHeaderReader";
    private static final int TYPE_FLOAT = 3;
    private static final int TYPE_PCM = 1;
    private static final int TYPE_WAVE_FORMAT_EXTENSIBLE = 65534;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static final class ChunkHeader {
        public static final int SIZE_IN_BYTES = 8;
        public final int id;
        public final long size;

        private ChunkHeader(int i, long j) {
            this.id = i;
            this.size = j;
        }

        public static ChunkHeader peek(ExtractorInput extractorInput, ParsableByteArray parsableByteArray) throws IOException, InterruptedException {
            extractorInput.peekFully(parsableByteArray.data, 0, 8);
            parsableByteArray.setPosition(0);
            return new ChunkHeader(parsableByteArray.readInt(), parsableByteArray.readLittleEndianUnsignedInt());
        }
    }

    private WavHeaderReader() {
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0099 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mbridge.msdk.playercommon.exoplayer2.extractor.wav.WavHeader peek(com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorInput r15) throws java.io.IOException, java.lang.InterruptedException {
        /*
            com.mbridge.msdk.playercommon.exoplayer2.util.Assertions.checkNotNull(r15)
            com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray r0 = new com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray
            r1 = 16
            r0.<init>(r1)
            com.mbridge.msdk.playercommon.exoplayer2.extractor.wav.WavHeaderReader$ChunkHeader r2 = com.mbridge.msdk.playercommon.exoplayer2.extractor.wav.WavHeaderReader.ChunkHeader.peek(r15, r0)
            int r2 = r2.id
            java.lang.String r3 = "RIFF"
            int r3 = com.mbridge.msdk.playercommon.exoplayer2.util.Util.getIntegerCodeForString(r3)
            r4 = 0
            if (r2 == r3) goto L1a
            return r4
        L1a:
            byte[] r2 = r0.data
            r3 = 0
            r5 = 4
            r15.peekFully(r2, r3, r5)
            r0.setPosition(r3)
            int r2 = r0.readInt()
            java.lang.String r6 = "WAVE"
            int r6 = com.mbridge.msdk.playercommon.exoplayer2.util.Util.getIntegerCodeForString(r6)
            if (r2 == r6) goto L31
            return r4
        L31:
            com.mbridge.msdk.playercommon.exoplayer2.extractor.wav.WavHeaderReader$ChunkHeader r2 = com.mbridge.msdk.playercommon.exoplayer2.extractor.wav.WavHeaderReader.ChunkHeader.peek(r15, r0)
        L35:
            int r6 = r2.id
            java.lang.String r7 = "fmt "
            int r7 = com.mbridge.msdk.playercommon.exoplayer2.util.Util.getIntegerCodeForString(r7)
            if (r6 == r7) goto L4a
            long r6 = r2.size
            int r2 = (int) r6
            r15.advancePeekPosition(r2)
            com.mbridge.msdk.playercommon.exoplayer2.extractor.wav.WavHeaderReader$ChunkHeader r2 = com.mbridge.msdk.playercommon.exoplayer2.extractor.wav.WavHeaderReader.ChunkHeader.peek(r15, r0)
            goto L35
        L4a:
            long r6 = r2.size
            r8 = 16
            int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            r7 = 1
            if (r6 < 0) goto L55
            r6 = r7
            goto L56
        L55:
            r6 = r3
        L56:
            com.mbridge.msdk.playercommon.exoplayer2.util.Assertions.checkState(r6)
            byte[] r6 = r0.data
            r15.peekFully(r6, r3, r1)
            r0.setPosition(r3)
            int r6 = r0.readLittleEndianUnsignedShort()
            int r9 = r0.readLittleEndianUnsignedShort()
            int r10 = r0.readLittleEndianUnsignedIntToInt()
            int r11 = r0.readLittleEndianUnsignedIntToInt()
            int r12 = r0.readLittleEndianUnsignedShort()
            int r13 = r0.readLittleEndianUnsignedShort()
            int r0 = r9 * r13
            int r0 = r0 / 8
            if (r12 != r0) goto La7
            if (r6 == r7) goto L92
            r0 = 3
            if (r6 == r0) goto L8a
            r0 = 65534(0xfffe, float:9.1833E-41)
            if (r6 == r0) goto L92
            return r4
        L8a:
            r0 = 32
            if (r13 != r0) goto L90
            r14 = r5
            goto L97
        L90:
            r14 = r3
            goto L97
        L92:
            int r3 = com.mbridge.msdk.playercommon.exoplayer2.util.Util.getPcmEncoding(r13)
            goto L90
        L97:
            if (r14 != 0) goto L9a
            return r4
        L9a:
            long r2 = r2.size
            int r0 = (int) r2
            int r0 = r0 - r1
            r15.advancePeekPosition(r0)
            com.mbridge.msdk.playercommon.exoplayer2.extractor.wav.WavHeader r8 = new com.mbridge.msdk.playercommon.exoplayer2.extractor.wav.WavHeader
            r8.<init>(r9, r10, r11, r12, r13, r14)
            return r8
        La7:
            com.mbridge.msdk.playercommon.exoplayer2.ParserException r15 = new com.mbridge.msdk.playercommon.exoplayer2.ParserException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Expected block alignment: "
            r1.append(r2)
            r1.append(r0)
            java.lang.String r0 = "; got: "
            r1.append(r0)
            r1.append(r12)
            java.lang.String r0 = r1.toString()
            r15.<init>(r0)
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.playercommon.exoplayer2.extractor.wav.WavHeaderReader.peek(com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorInput):com.mbridge.msdk.playercommon.exoplayer2.extractor.wav.WavHeader");
    }

    public static void skipToData(ExtractorInput extractorInput, WavHeader wavHeader) throws IOException, InterruptedException {
        Assertions.checkNotNull(extractorInput);
        Assertions.checkNotNull(wavHeader);
        extractorInput.resetPeekPosition();
        ParsableByteArray parsableByteArray = new ParsableByteArray(8);
        ChunkHeader peek = ChunkHeader.peek(extractorInput, parsableByteArray);
        while (peek.id != Util.getIntegerCodeForString("data")) {
            long j = peek.size + 8;
            if (peek.id == Util.getIntegerCodeForString("RIFF")) {
                j = 12;
            }
            if (j <= 2147483647L) {
                extractorInput.skipFully((int) j);
                peek = ChunkHeader.peek(extractorInput, parsableByteArray);
            } else {
                throw new ParserException("Chunk is too large (~2GB+) to skip; id: " + peek.id);
            }
        }
        extractorInput.skipFully(8);
        wavHeader.setDataBounds(extractorInput.getPosition(), peek.size);
    }
}

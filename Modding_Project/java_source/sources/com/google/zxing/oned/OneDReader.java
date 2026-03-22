package com.google.zxing.oned;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public abstract class OneDReader implements Reader {
    private Result doDecode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException {
        boolean z;
        int i;
        int i2;
        Map<DecodeHintType, ?> map2;
        int i3;
        int i4;
        EnumMap enumMap = map;
        int width = binaryBitmap.getWidth();
        int height = binaryBitmap.getHeight();
        BitArray bitArray = new BitArray(width);
        int i5 = 1;
        if (enumMap != null && enumMap.containsKey(DecodeHintType.TRY_HARDER)) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            i = 8;
        } else {
            i = 5;
        }
        int max = Math.max(1, height >> i);
        if (z) {
            i2 = height;
        } else {
            i2 = 15;
        }
        int i6 = height / 2;
        int i7 = 0;
        while (i7 < i2) {
            int i8 = i7 + 1;
            int i9 = i8 / 2;
            if ((i7 & 1) != 0) {
                i9 = -i9;
            }
            int i10 = (i9 * max) + i6;
            if (i10 < 0 || i10 >= height) {
                break;
            }
            try {
                bitArray = binaryBitmap.getBlackRow(i10, bitArray);
                int i11 = 0;
                while (i11 < 2) {
                    if (i11 == i5) {
                        bitArray.reverse();
                        if (enumMap != null) {
                            DecodeHintType decodeHintType = DecodeHintType.NEED_RESULT_POINT_CALLBACK;
                            if (enumMap.containsKey(decodeHintType)) {
                                EnumMap enumMap2 = new EnumMap(DecodeHintType.class);
                                enumMap2.putAll(enumMap);
                                enumMap2.remove(decodeHintType);
                                enumMap = enumMap2;
                            }
                        }
                    }
                    try {
                        Result decodeRow = decodeRow(i10, bitArray, enumMap);
                        if (i11 == i5) {
                            try {
                                decodeRow.putMetadata(ResultMetadataType.ORIENTATION, 180);
                                ResultPoint[] resultPoints = decodeRow.getResultPoints();
                                if (resultPoints != null) {
                                    i4 = i5;
                                    float f = width;
                                    try {
                                        map2 = enumMap;
                                    } catch (ReaderException unused) {
                                        map2 = enumMap;
                                    }
                                    try {
                                        i3 = width;
                                        try {
                                            resultPoints[0] = new ResultPoint((f - resultPoints[0].getX()) - 1.0f, resultPoints[0].getY());
                                            resultPoints[i4] = new ResultPoint((f - resultPoints[i4].getX()) - 1.0f, resultPoints[i4].getY());
                                        } catch (ReaderException unused2) {
                                            continue;
                                            i11++;
                                            enumMap = map2;
                                            i5 = i4;
                                            width = i3;
                                        }
                                    } catch (ReaderException unused3) {
                                        i3 = width;
                                        i11++;
                                        enumMap = map2;
                                        i5 = i4;
                                        width = i3;
                                    }
                                }
                            } catch (ReaderException unused4) {
                                map2 = enumMap;
                                i3 = width;
                                i4 = i5;
                            }
                        }
                        return decodeRow;
                    } catch (ReaderException unused5) {
                        map2 = enumMap;
                        i3 = width;
                        i4 = i5;
                    }
                }
                continue;
            } catch (NotFoundException unused6) {
            }
            i7 = i8;
            i5 = i5;
            width = width;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public static float patternMatchVariance(int[] iArr, int[] iArr2, float f) {
        float f2;
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i += iArr[i3];
            i2 += iArr2[i3];
        }
        if (i < i2) {
            return Float.POSITIVE_INFINITY;
        }
        float f3 = i;
        float f4 = f3 / i2;
        float f5 = f * f4;
        float f6 = 0.0f;
        for (int i4 = 0; i4 < length; i4++) {
            float f7 = iArr2[i4] * f4;
            float f8 = iArr[i4];
            if (f8 > f7) {
                f2 = f8 - f7;
            } else {
                f2 = f7 - f8;
            }
            if (f2 > f5) {
                return Float.POSITIVE_INFINITY;
            }
            f6 += f2;
        }
        return f6 / f3;
    }

    public static void recordPattern(BitArray bitArray, int i, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int i2 = 0;
        Arrays.fill(iArr, 0, length, 0);
        int size = bitArray.getSize();
        if (i < size) {
            boolean z = !bitArray.get(i);
            while (i < size) {
                if (bitArray.get(i) != z) {
                    iArr[i2] = iArr[i2] + 1;
                } else {
                    i2++;
                    if (i2 == length) {
                        break;
                    }
                    iArr[i2] = 1;
                    z = !z;
                }
                i++;
            }
            if (i2 != length) {
                if (i2 != length - 1 || i != size) {
                    throw NotFoundException.getNotFoundInstance();
                }
                return;
            }
            return;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public static void recordPatternInReverse(BitArray bitArray, int i, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        boolean z = bitArray.get(i);
        while (i > 0 && length >= 0) {
            i--;
            if (bitArray.get(i) != z) {
                length--;
                z = !z;
            }
        }
        if (length < 0) {
            recordPattern(bitArray, i + 1, iArr);
            return;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, FormatException {
        return decode(binaryBitmap, null);
    }

    public abstract Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException;

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        try {
            return doDecode(binaryBitmap, map);
        } catch (NotFoundException e) {
            if (map != null && map.containsKey(DecodeHintType.TRY_HARDER) && binaryBitmap.isRotateSupported()) {
                BinaryBitmap rotateCounterClockwise = binaryBitmap.rotateCounterClockwise();
                Result doDecode = doDecode(rotateCounterClockwise, map);
                Map<ResultMetadataType, Object> resultMetadata = doDecode.getResultMetadata();
                int i = 270;
                if (resultMetadata != null) {
                    ResultMetadataType resultMetadataType = ResultMetadataType.ORIENTATION;
                    if (resultMetadata.containsKey(resultMetadataType)) {
                        i = (((Integer) resultMetadata.get(resultMetadataType)).intValue() + 270) % TXVodDownloadDataSource.QUALITY_360P;
                    }
                }
                doDecode.putMetadata(ResultMetadataType.ORIENTATION, Integer.valueOf(i));
                ResultPoint[] resultPoints = doDecode.getResultPoints();
                if (resultPoints != null) {
                    int height = rotateCounterClockwise.getHeight();
                    for (int i2 = 0; i2 < resultPoints.length; i2++) {
                        resultPoints[i2] = new ResultPoint((height - resultPoints[i2].getY()) - 1.0f, resultPoints[i2].getX());
                    }
                }
                return doDecode;
            }
            throw e;
        }
    }

    @Override // com.google.zxing.Reader
    public void reset() {
    }
}

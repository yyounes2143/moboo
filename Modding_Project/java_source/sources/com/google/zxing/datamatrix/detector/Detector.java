package com.google.zxing.datamatrix.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.common.detector.WhiteRectangleDetector;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class Detector {
    private final BitMatrix image;
    private final WhiteRectangleDetector rectangleDetector;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static final class ResultPointsAndTransitions {
        private final ResultPoint from;
        private final ResultPoint to;
        private final int transitions;

        public ResultPoint getFrom() {
            return this.from;
        }

        public ResultPoint getTo() {
            return this.to;
        }

        public int getTransitions() {
            return this.transitions;
        }

        public String toString() {
            return this.from + "/" + this.to + '/' + this.transitions;
        }

        private ResultPointsAndTransitions(ResultPoint resultPoint, ResultPoint resultPoint2, int i) {
            this.from = resultPoint;
            this.to = resultPoint2;
            this.transitions = i;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static final class ResultPointsAndTransitionsComparator implements Serializable, Comparator<ResultPointsAndTransitions> {
        private ResultPointsAndTransitionsComparator() {
        }

        @Override // java.util.Comparator
        public int compare(ResultPointsAndTransitions resultPointsAndTransitions, ResultPointsAndTransitions resultPointsAndTransitions2) {
            return resultPointsAndTransitions.getTransitions() - resultPointsAndTransitions2.getTransitions();
        }
    }

    public Detector(BitMatrix bitMatrix) throws NotFoundException {
        this.image = bitMatrix;
        this.rectangleDetector = new WhiteRectangleDetector(bitMatrix);
    }

    private ResultPoint correctTopRight(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i) {
        float f = i;
        float distance = distance(resultPoint, resultPoint2) / f;
        float distance2 = distance(resultPoint3, resultPoint4);
        ResultPoint resultPoint5 = new ResultPoint(resultPoint4.getX() + (((resultPoint4.getX() - resultPoint3.getX()) / distance2) * distance), resultPoint4.getY() + (distance * ((resultPoint4.getY() - resultPoint3.getY()) / distance2)));
        float distance3 = distance(resultPoint, resultPoint3) / f;
        float distance4 = distance(resultPoint2, resultPoint4);
        ResultPoint resultPoint6 = new ResultPoint(resultPoint4.getX() + (((resultPoint4.getX() - resultPoint2.getX()) / distance4) * distance3), resultPoint4.getY() + (distance3 * ((resultPoint4.getY() - resultPoint2.getY()) / distance4)));
        if (!isValid(resultPoint5)) {
            if (!isValid(resultPoint6)) {
                return null;
            }
        } else if (!isValid(resultPoint6) || Math.abs(transitionsBetween(resultPoint3, resultPoint5).getTransitions() - transitionsBetween(resultPoint2, resultPoint5).getTransitions()) <= Math.abs(transitionsBetween(resultPoint3, resultPoint6).getTransitions() - transitionsBetween(resultPoint2, resultPoint6).getTransitions())) {
            return resultPoint5;
        }
        return resultPoint6;
    }

    private ResultPoint correctTopRightRectangular(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i, int i2) {
        float distance = distance(resultPoint, resultPoint2) / i;
        float distance2 = distance(resultPoint3, resultPoint4);
        ResultPoint resultPoint5 = new ResultPoint(resultPoint4.getX() + (((resultPoint4.getX() - resultPoint3.getX()) / distance2) * distance), resultPoint4.getY() + (distance * ((resultPoint4.getY() - resultPoint3.getY()) / distance2)));
        float distance3 = distance(resultPoint, resultPoint3) / i2;
        float distance4 = distance(resultPoint2, resultPoint4);
        ResultPoint resultPoint6 = new ResultPoint(resultPoint4.getX() + (((resultPoint4.getX() - resultPoint2.getX()) / distance4) * distance3), resultPoint4.getY() + (distance3 * ((resultPoint4.getY() - resultPoint2.getY()) / distance4)));
        if (!isValid(resultPoint5)) {
            if (!isValid(resultPoint6)) {
                return null;
            }
        } else if (!isValid(resultPoint6) || Math.abs(i - transitionsBetween(resultPoint3, resultPoint5).getTransitions()) + Math.abs(i2 - transitionsBetween(resultPoint2, resultPoint5).getTransitions()) <= Math.abs(i - transitionsBetween(resultPoint3, resultPoint6).getTransitions()) + Math.abs(i2 - transitionsBetween(resultPoint2, resultPoint6).getTransitions())) {
            return resultPoint5;
        }
        return resultPoint6;
    }

    private static int distance(ResultPoint resultPoint, ResultPoint resultPoint2) {
        return MathUtils.round(ResultPoint.distance(resultPoint, resultPoint2));
    }

    private static void increment(Map<ResultPoint, Integer> map, ResultPoint resultPoint) {
        Integer num = map.get(resultPoint);
        int i = 1;
        if (num != null) {
            i = 1 + num.intValue();
        }
        map.put(resultPoint, Integer.valueOf(i));
    }

    private boolean isValid(ResultPoint resultPoint) {
        if (resultPoint.getX() >= 0.0f && resultPoint.getX() < this.image.getWidth() && resultPoint.getY() > 0.0f && resultPoint.getY() < this.image.getHeight()) {
            return true;
        }
        return false;
    }

    private static BitMatrix sampleGrid(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i, int i2) throws NotFoundException {
        float f = i - 0.5f;
        float f2 = i2 - 0.5f;
        return GridSampler.getInstance().sampleGrid(bitMatrix, i, i2, 0.5f, 0.5f, f, 0.5f, f, f2, 0.5f, f2, resultPoint.getX(), resultPoint.getY(), resultPoint4.getX(), resultPoint4.getY(), resultPoint3.getX(), resultPoint3.getY(), resultPoint2.getX(), resultPoint2.getY());
    }

    private ResultPointsAndTransitions transitionsBetween(ResultPoint resultPoint, ResultPoint resultPoint2) {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int x = (int) resultPoint.getX();
        int y = (int) resultPoint.getY();
        int x2 = (int) resultPoint2.getX();
        int y2 = (int) resultPoint2.getY();
        int i6 = 0;
        int i7 = 1;
        if (Math.abs(y2 - y) > Math.abs(x2 - x)) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            y = x;
            x = y;
            y2 = x2;
            x2 = y2;
        }
        int abs = Math.abs(x2 - x);
        int abs2 = Math.abs(y2 - y);
        int i8 = (-abs) / 2;
        if (y < y2) {
            i = 1;
        } else {
            i = -1;
        }
        if (x >= x2) {
            i7 = -1;
        }
        BitMatrix bitMatrix = this.image;
        if (z) {
            i2 = y;
        } else {
            i2 = x;
        }
        if (z) {
            i3 = x;
        } else {
            i3 = y;
        }
        boolean z2 = bitMatrix.get(i2, i3);
        while (x != x2) {
            BitMatrix bitMatrix2 = this.image;
            if (z) {
                i4 = y;
            } else {
                i4 = x;
            }
            if (z) {
                i5 = x;
            } else {
                i5 = y;
            }
            boolean z3 = bitMatrix2.get(i4, i5);
            if (z3 != z2) {
                i6++;
                z2 = z3;
            }
            i8 += abs2;
            if (i8 > 0) {
                if (y == y2) {
                    break;
                }
                y += i;
                i8 -= abs;
            }
            x += i7;
        }
        return new ResultPointsAndTransitions(resultPoint, resultPoint2, i6);
    }

    public DetectorResult detect() throws NotFoundException {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        BitMatrix sampleGrid;
        ResultPoint[] detect = this.rectangleDetector.detect();
        ResultPoint resultPoint4 = detect[0];
        ResultPoint resultPoint5 = detect[1];
        ResultPoint resultPoint6 = detect[2];
        ResultPoint resultPoint7 = detect[3];
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(transitionsBetween(resultPoint4, resultPoint5));
        arrayList.add(transitionsBetween(resultPoint4, resultPoint6));
        arrayList.add(transitionsBetween(resultPoint5, resultPoint7));
        arrayList.add(transitionsBetween(resultPoint6, resultPoint7));
        ResultPoint resultPoint8 = null;
        Collections.sort(arrayList, new ResultPointsAndTransitionsComparator());
        ResultPointsAndTransitions resultPointsAndTransitions = (ResultPointsAndTransitions) arrayList.get(0);
        ResultPointsAndTransitions resultPointsAndTransitions2 = (ResultPointsAndTransitions) arrayList.get(1);
        HashMap hashMap = new HashMap();
        increment(hashMap, resultPointsAndTransitions.getFrom());
        increment(hashMap, resultPointsAndTransitions.getTo());
        increment(hashMap, resultPointsAndTransitions2.getFrom());
        increment(hashMap, resultPointsAndTransitions2.getTo());
        ResultPoint resultPoint9 = null;
        ResultPoint resultPoint10 = null;
        for (Map.Entry entry : hashMap.entrySet()) {
            ResultPoint resultPoint11 = (ResultPoint) entry.getKey();
            if (((Integer) entry.getValue()).intValue() == 2) {
                resultPoint9 = resultPoint11;
            } else if (resultPoint8 == null) {
                resultPoint8 = resultPoint11;
            } else {
                resultPoint10 = resultPoint11;
            }
        }
        if (resultPoint8 != null && resultPoint9 != null && resultPoint10 != null) {
            ResultPoint[] resultPointArr = {resultPoint8, resultPoint9, resultPoint10};
            ResultPoint.orderBestPatterns(resultPointArr);
            ResultPoint resultPoint12 = resultPointArr[0];
            ResultPoint resultPoint13 = resultPointArr[1];
            ResultPoint resultPoint14 = resultPointArr[2];
            if (!hashMap.containsKey(resultPoint4)) {
                resultPoint6 = resultPoint4;
            } else if (!hashMap.containsKey(resultPoint5)) {
                resultPoint6 = resultPoint5;
            } else if (hashMap.containsKey(resultPoint6)) {
                resultPoint6 = resultPoint7;
            }
            int transitions = transitionsBetween(resultPoint14, resultPoint6).getTransitions();
            int transitions2 = transitionsBetween(resultPoint12, resultPoint6).getTransitions();
            if ((transitions & 1) == 1) {
                transitions++;
            }
            int i = transitions + 2;
            if ((transitions2 & 1) == 1) {
                transitions2++;
            }
            int i2 = transitions2 + 2;
            if (i * 4 >= i2 * 7 || i2 * 4 >= i * 7) {
                resultPoint = resultPoint12;
                ResultPoint correctTopRightRectangular = correctTopRightRectangular(resultPoint13, resultPoint, resultPoint14, resultPoint6, i, i2);
                if (correctTopRightRectangular != null) {
                    resultPoint6 = correctTopRightRectangular;
                }
                int transitions3 = transitionsBetween(resultPoint14, resultPoint6).getTransitions();
                int transitions4 = transitionsBetween(resultPoint, resultPoint6).getTransitions();
                if ((transitions3 & 1) == 1) {
                    transitions3++;
                }
                int i3 = transitions3;
                if ((transitions4 & 1) == 1) {
                    transitions4++;
                }
                resultPoint2 = resultPoint13;
                resultPoint3 = resultPoint14;
                sampleGrid = sampleGrid(this.image, resultPoint3, resultPoint2, resultPoint, resultPoint6, i3, transitions4);
            } else {
                int min = Math.min(i2, i);
                resultPoint = resultPoint12;
                ResultPoint correctTopRight = correctTopRight(resultPoint13, resultPoint, resultPoint14, resultPoint6, min);
                if (correctTopRight != null) {
                    resultPoint6 = correctTopRight;
                }
                int max = Math.max(transitionsBetween(resultPoint14, resultPoint6).getTransitions(), transitionsBetween(resultPoint, resultPoint6).getTransitions());
                int i4 = max + 1;
                if ((i4 & 1) == 1) {
                    i4 = max + 2;
                }
                int i5 = i4;
                resultPoint2 = resultPoint13;
                resultPoint3 = resultPoint14;
                sampleGrid = sampleGrid(this.image, resultPoint3, resultPoint2, resultPoint, resultPoint6, i5, i5);
            }
            return new DetectorResult(sampleGrid, new ResultPoint[]{resultPoint3, resultPoint2, resultPoint, resultPoint6});
        }
        throw NotFoundException.getNotFoundInstance();
    }
}

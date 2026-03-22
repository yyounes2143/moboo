package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public final class Score {
    private static final double CUTOFF_CHROMA = 15.0d;
    private static final double CUTOFF_EXCITED_PROPORTION = 0.01d;
    private static final double CUTOFF_TONE = 10.0d;
    private static final double TARGET_CHROMA = 48.0d;
    private static final double WEIGHT_CHROMA_ABOVE = 0.3d;
    private static final double WEIGHT_CHROMA_BELOW = 0.1d;
    private static final double WEIGHT_PROPORTION = 0.7d;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class ScoredComparator implements Comparator<Map.Entry<Integer, Double>> {
        @Override // java.util.Comparator
        public int compare(Map.Entry<Integer, Double> entry, Map.Entry<Integer, Double> entry2) {
            return -entry.getValue().compareTo(entry2.getValue());
        }
    }

    private Score() {
    }

    private static List<Integer> filter(Map<Integer, Double> map, Map<Integer, Cam16> map2) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Integer, Cam16> entry : map2.entrySet()) {
            Integer key = entry.getKey();
            int intValue = key.intValue();
            double doubleValue = map.get(key).doubleValue();
            if (entry.getValue().getChroma() >= CUTOFF_CHROMA && ColorUtils.lstarFromArgb(intValue) >= CUTOFF_TONE && doubleValue >= CUTOFF_EXCITED_PROPORTION) {
                arrayList.add(key);
            }
        }
        return arrayList;
    }

    public static List<Integer> score(Map<Integer, Integer> map) {
        Iterator<Map.Entry<Integer, Integer>> it;
        double d;
        double d2 = 0.0d;
        while (map.entrySet().iterator().hasNext()) {
            d2 += it.next().getValue().intValue();
        }
        HashMap hashMap = new HashMap();
        double[] dArr = new double[361];
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
            Integer key = entry.getKey();
            Cam16 fromInt = Cam16.fromInt(key.intValue());
            hashMap.put(key, fromInt);
            int round = (int) Math.round(fromInt.getHue());
            dArr[round] = dArr[round] + (entry.getValue().intValue() / d2);
        }
        HashMap hashMap2 = new HashMap();
        for (Map.Entry entry2 : hashMap.entrySet()) {
            Integer num = (Integer) entry2.getKey();
            num.intValue();
            int round2 = (int) Math.round(((Cam16) entry2.getValue()).getHue());
            double d3 = 0.0d;
            for (int i = round2 - 15; i < round2 + 15; i++) {
                d3 += dArr[MathUtils.sanitizeDegreesInt(i)];
            }
            hashMap2.put(num, Double.valueOf(d3));
        }
        HashMap hashMap3 = new HashMap();
        for (Map.Entry entry3 : hashMap.entrySet()) {
            Integer num2 = (Integer) entry3.getKey();
            num2.intValue();
            Cam16 cam16 = (Cam16) entry3.getValue();
            double doubleValue = ((Double) hashMap2.get(num2)).doubleValue() * 100.0d * WEIGHT_PROPORTION;
            if (cam16.getChroma() < TARGET_CHROMA) {
                d = 0.1d;
            } else {
                d = WEIGHT_CHROMA_ABOVE;
            }
            hashMap3.put(num2, Double.valueOf(doubleValue + ((cam16.getChroma() - TARGET_CHROMA) * d)));
        }
        List<Integer> filter = filter(hashMap2, hashMap);
        HashMap hashMap4 = new HashMap();
        for (Integer num3 : filter) {
            num3.intValue();
            hashMap4.put(num3, (Double) hashMap3.get(num3));
        }
        ArrayList arrayList = new ArrayList(hashMap4.entrySet());
        Collections.sort(arrayList, new ScoredComparator());
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            Map.Entry entry4 = (Map.Entry) obj;
            Integer num4 = (Integer) entry4.getKey();
            num4.intValue();
            Cam16 cam162 = (Cam16) hashMap.get(num4);
            int size2 = arrayList2.size();
            int i3 = 0;
            while (true) {
                if (i3 < size2) {
                    Object obj2 = arrayList2.get(i3);
                    i3++;
                    if (MathUtils.differenceDegrees(cam162.getHue(), ((Cam16) hashMap.get((Integer) obj2)).getHue()) < CUTOFF_CHROMA) {
                        break;
                    }
                } else {
                    arrayList2.add((Integer) entry4.getKey());
                    break;
                }
            }
        }
        if (arrayList2.isEmpty()) {
            arrayList2.add(-12417548);
        }
        return arrayList2;
    }
}

package com.applovin.mediation;

import com.applovin.impl.sdk.o;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class MaxSegment {

    /* renamed from: a  reason: collision with root package name */
    private final int f3839a;
    private final List b;

    public MaxSegment(int i, List<Integer> list) {
        this.f3839a = i;
        this.b = list;
        a(i);
        for (Integer num : list) {
            a(num.intValue());
        }
    }

    private void a(int i) {
        if (i >= 0) {
            return;
        }
        o.h("MaxSegment", "Please ensure that the segment value entered is a non-negative number in the range of [0, 2147483647]: " + i);
    }

    public int getKey() {
        return this.f3839a;
    }

    public List<Integer> getValues() {
        return this.b;
    }

    public String toString() {
        return "MaxSegment{key=" + this.f3839a + ", values=" + this.b + AbstractJsonLexerKt.END_OBJ;
    }
}

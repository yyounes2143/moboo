package com.changdu.mobovideo.utils;

import com.changdu.mobovideo.utils.SpannableTextBuilder;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: Proguard */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 SpannableStrUtil.kt\ncom/changdu/mobovideo/utils/SpannableTextBuilder\n*L\n1#1,328:1\n478#2:329\n*E\n"})
/* loaded from: classes3.dex */
public final class SpannableTextBuilder$build$$inlined$sortBy$1<T> implements Comparator {
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        return ComparisonsKt.compareValues(Integer.valueOf(((SpannableTextBuilder.PlaceholderPosition) t).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), Integer.valueOf(((SpannableTextBuilder.PlaceholderPosition) t2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
    }
}

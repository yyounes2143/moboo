package com.changdu.mobovideo.localpush;

import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tencent.rtmp.TXLiveConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J#\u0010\n\u001a\u00020\t2\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J-\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\b\b\u0002\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\u0016¢\u0006\u0004\b\u001f\u0010\u001bJ\u0015\u0010 \u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u0016¢\u0006\u0004\b \u0010\u001eJ\r\u0010!\u001a\u00020\u0016¢\u0006\u0004\b!\u0010\u001bJ\u0015\u0010\"\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u0016¢\u0006\u0004\b\"\u0010\u001eJ\r\u0010#\u001a\u00020\u0016¢\u0006\u0004\b#\u0010\u001bJ\u0015\u0010$\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u0016¢\u0006\u0004\b$\u0010\u001eJ\r\u0010%\u001a\u00020\u0016¢\u0006\u0004\b%\u0010\u001bJ\u0015\u0010&\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u0016¢\u0006\u0004\b&\u0010\u001eJ\r\u0010'\u001a\u00020\u0016¢\u0006\u0004\b'\u0010\u001bJ\u0015\u0010(\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u0016¢\u0006\u0004\b(\u0010\u001eJ\r\u0010)\u001a\u00020\u0016¢\u0006\u0004\b)\u0010\u001bJ\u0015\u0010*\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u0016¢\u0006\u0004\b*\u0010\u001eJ\u0015\u0010.\u001a\u00020-2\u0006\u0010,\u001a\u00020+¢\u0006\u0004\b.\u0010/J\u001d\u00101\u001a\u00020\t2\u0006\u0010,\u001a\u00020+2\u0006\u00100\u001a\u00020-¢\u0006\u0004\b1\u00102J\u001f\u00105\u001a\u00020\t2\u0006\u00103\u001a\u00020\u00162\b\b\u0002\u00104\u001a\u00020\u0016¢\u0006\u0004\b5\u00106J\u001d\u00107\u001a\b\u0012\u0004\u0012\u00020\u00160\u00112\b\b\u0002\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b7\u00108¨\u00069"}, d2 = {"Lcom/changdu/mobovideo/localpush/LocalPushStateStore;", "", "<init>", "()V", "Lcom/changdu/mobovideo/localpush/LocalPushState;", "Wwwwwwwwww", "()Lcom/changdu/mobovideo/localpush/LocalPushState;", "Lkotlin/Function1;", "transform", "", "Kkkkkkkkkkkkkk", "(Lkotlin/jvm/functions/Function1;)V", "state", "Kkkkkkkkkkkkk", "(Lcom/changdu/mobovideo/localpush/LocalPushState;)V", "Lorg/json/JSONArray;", "array", "", "Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;", "Wwwwwwwwwwwwww", "(Lorg/json/JSONArray;)Ljava/util/List;", "records", "", "nowMs", "Wwwwwwwwwwwww", "(Ljava/util/List;J)Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwww", "()J", "value", "Wwww", "(J)V", "Wwwwwwwwwwwwwwwww", "Kkkkkkkkkkkkkkkk", "Wwwwwwwwwwwwwwwwww", "Kkkkkkkkkkkkkkkkkk", "Wwwwwwwwwwwwwwwwwww", "Kkkkkkkkkkkkkkkkkkkk", "Wwwwwwwwwwwwwwwwwwwww", "Kkkkkkkkkkkkkkkkkkkkkkkk", "Wwwwwwwwwwwwwwwwwwwwww", "Kkkkkkkkkkkkkkkkkkkkkkkkkk", "Wwwwwwwwwwwwwwwwwwww", "Kkkkkkkkkkkkkkkkkkkkkk", "Lcom/changdu/mobovideo/localpush/LocalPushType;", "type", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/changdu/mobovideo/localpush/LocalPushType;)I", FirebaseAnalytics.Param.INDEX, "Wwwwww", "(Lcom/changdu/mobovideo/localpush/LocalPushType;I)V", "seriesId", "pushedAtMs", "Wwwwwwwww", "(JJ)V", "Wwwwwwwwwwwwwwww", "(J)Ljava/util/List;", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLocalPushStateStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalPushStateStore.kt\ncom/changdu/mobovideo/localpush/LocalPushStateStore\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,197:1\n1563#2:198\n1634#2,3:199\n1869#2,2:202\n1068#2:204\n1999#2,14:229\n1068#2:246\n827#2:247\n855#2,2:248\n1068#2:250\n996#3:205\n1025#3,3:206\n1028#3,3:216\n382#4,7:209\n136#5,9:219\n216#5:228\n217#5:244\n145#5:245\n1#6:243\n*S KotlinDebug\n*F\n+ 1 LocalPushStateStore.kt\ncom/changdu/mobovideo/localpush/LocalPushStateStore\n*L\n109#1:198\n109#1:199,3\n157#1:202,2\n188#1:204\n193#1:229,14\n194#1:246\n94#1:247\n94#1:248,2\n99#1:250\n192#1:205\n192#1:206,3\n192#1:216,3\n192#1:209,7\n193#1:219,9\n193#1:228\n193#1:244\n193#1:245\n193#1:243\n*E\n"})
/* loaded from: classes3.dex */
public final class LocalPushStateStore {
    @NotNull
    public static final LocalPushStateStore INSTANCE = new LocalPushStateStore();

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LocalPushType.values().length];
            try {
                iArr[LocalPushType.SIGN_IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LocalPushType.RECALL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LocalPushType.PROMOTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final LocalPushState Kkkkkkkkkkkkkkk(long j, LocalPushState localPushState) {
        return LocalPushState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushState, 0L, j, 0L, 0L, 0L, 0L, 0L, 0, 0, 0, null, 2045, null);
    }

    public static final LocalPushState Kkkkkkkkkkkkkkkkk(long j, LocalPushState localPushState) {
        return LocalPushState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushState, 0L, 0L, j, 0L, 0L, 0L, 0L, 0, 0, 0, null, 2043, null);
    }

    public static final LocalPushState Kkkkkkkkkkkkkkkkkkk(long j, LocalPushState localPushState) {
        return LocalPushState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushState, 0L, 0L, 0L, j, 0L, 0L, 0L, 0, 0, 0, null, 2039, null);
    }

    public static final LocalPushState Kkkkkkkkkkkkkkkkkkkkk(long j, LocalPushState localPushState) {
        return LocalPushState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushState, 0L, 0L, 0L, 0L, 0L, 0L, j, 0, 0, 0, null, 1983, null);
    }

    public static final LocalPushState Kkkkkkkkkkkkkkkkkkkkkkk(long j, LocalPushState localPushState) {
        return LocalPushState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushState, 0L, 0L, 0L, 0L, j, 0L, 0L, 0, 0, 0, null, 2031, null);
    }

    public static final LocalPushState Kkkkkkkkkkkkkkkkkkkkkkkkk(long j, LocalPushState localPushState) {
        return LocalPushState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushState, 0L, 0L, 0L, 0L, 0L, j, 0L, 0, 0, 0, null, TXLiveConstants.PLAY_EVT_STREAM_SWITCH_SUCC, null);
    }

    public static final LocalPushState Www(long j, LocalPushState localPushState) {
        return LocalPushState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushState, j, 0L, 0L, 0L, 0L, 0L, 0L, 0, 0, 0, null, 2046, null);
    }

    public static final LocalPushState Wwwww(LocalPushType localPushType, int i, LocalPushState localPushState) {
        int i2 = WhenMappings.$EnumSwitchMapping$0[localPushType.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 3) {
                    return LocalPushState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushState, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0, 0, i, null, 1535, null);
                }
                throw new NoWhenBranchMatchedException();
            }
            return LocalPushState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushState, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0, i, 0, null, 1791, null);
        }
        return LocalPushState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushState, 0L, 0L, 0L, 0L, 0L, 0L, 0L, i, 0, 0, null, 1919, null);
    }

    public static final LocalPushState Wwwwwww(long j, long j2, LocalPushState localPushState) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : INSTANCE.Wwwwwwwwwwwww(localPushState.Wwwwwwwwwwwwwwwwwwwwwww(), j)) {
            if (((PromotionSeriesRecord) obj).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != j2) {
                arrayList.add(obj);
            }
        }
        return LocalPushState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(localPushState, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0, 0, 0, CollectionsKt.sortedWith(CollectionsKt.plus((Collection<? extends PromotionSeriesRecord>) arrayList, new PromotionSeriesRecord(j2, j)), new Comparator() { // from class: com.changdu.mobovideo.localpush.LocalPushStateStore$recordPromotionSeriesId$lambda$10$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Long.valueOf(((PromotionSeriesRecord) t2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), Long.valueOf(((PromotionSeriesRecord) t).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
            }
        }), AnalyticsListener.EVENT_DRM_KEYS_LOADED, null);
    }

    public static /* synthetic */ void Wwwwwwww(LocalPushStateStore localPushStateStore, long j, long j2, int i, Object obj) {
        if ((i & 2) != 0) {
            j2 = System.currentTimeMillis();
        }
        localPushStateStore.Wwwwwwwww(j, j2);
    }

    public static final boolean Wwwwwwwwwww(long j, long j2, PromotionSeriesRecord promotionSeriesRecord) {
        if (promotionSeriesRecord.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() > 0) {
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = promotionSeriesRecord.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (j <= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 <= j2) {
                return true;
            }
            return false;
        }
        return false;
    }

    public static /* synthetic */ List Wwwwwwwwwwww(LocalPushStateStore localPushStateStore, List list, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = System.currentTimeMillis();
        }
        return localPushStateStore.Wwwwwwwwwwwww(list, j);
    }

    public static /* synthetic */ List Wwwwwwwwwwwwwww(LocalPushStateStore localPushStateStore, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = System.currentTimeMillis();
        }
        return localPushStateStore.Wwwwwwwwwwwwwwww(j);
    }

    public final void Kkkkkkkkkkkkk(LocalPushState localPushState) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("lastActualPushAtMs", localPushState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("queueTailAtMs", localPushState.Wwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("nextSignInCandidateAtMs", localPushState.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("lastSignInPushAtMs", localPushState.Wwwwwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("lastRecallPushAtMs", localPushState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("lastPromotionPushAtMs", localPushState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("lastRecallTriggerAtMs", localPushState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("signInContentIndex", localPushState.Wwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("recallContentIndex", localPushState.Wwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("promotionContentIndex", localPushState.Wwwwwwwwwwwwwwwwwwwwwwwwww());
            JSONArray jSONArray = new JSONArray();
            for (PromotionSeriesRecord promotionSeriesRecord : Wwwwwwwwwwww(INSTANCE, localPushState.Wwwwwwwwwwwwwwwwwwwwwww(), 0L, 2, null)) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("seriesId", promotionSeriesRecord.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                jSONObject2.put("pushedAtMs", promotionSeriesRecord.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                jSONArray.put(jSONObject2);
            }
            Unit unit = Unit.INSTANCE;
            jSONObject.put("recentPromotionSeries", jSONArray);
            LocalPushStorage.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("local_push_state_all_json", jSONObject.toString());
        } catch (Throwable unused) {
        }
    }

    public final void Kkkkkkkkkkkkkk(Function1<? super LocalPushState, LocalPushState> function1) {
        Kkkkkkkkkkkkk(function1.invoke(Wwwwwwwwww()));
    }

    public final void Kkkkkkkkkkkkkkkk(final long j) {
        Kkkkkkkkkkkkkk(new Function1() { // from class: com.changdu.mobovideo.localpush.Wwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LocalPushState Kkkkkkkkkkkkkkk2;
                Kkkkkkkkkkkkkkk2 = LocalPushStateStore.Kkkkkkkkkkkkkkk(j, (LocalPushState) obj);
                return Kkkkkkkkkkkkkkk2;
            }
        });
    }

    public final void Kkkkkkkkkkkkkkkkkk(final long j) {
        Kkkkkkkkkkkkkk(new Function1() { // from class: com.changdu.mobovideo.localpush.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LocalPushState Kkkkkkkkkkkkkkkkk2;
                Kkkkkkkkkkkkkkkkk2 = LocalPushStateStore.Kkkkkkkkkkkkkkkkk(j, (LocalPushState) obj);
                return Kkkkkkkkkkkkkkkkk2;
            }
        });
    }

    public final void Kkkkkkkkkkkkkkkkkkkk(final long j) {
        Kkkkkkkkkkkkkk(new Function1() { // from class: com.changdu.mobovideo.localpush.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LocalPushState Kkkkkkkkkkkkkkkkkkk2;
                Kkkkkkkkkkkkkkkkkkk2 = LocalPushStateStore.Kkkkkkkkkkkkkkkkkkk(j, (LocalPushState) obj);
                return Kkkkkkkkkkkkkkkkkkk2;
            }
        });
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkk(final long j) {
        Kkkkkkkkkkkkkk(new Function1() { // from class: com.changdu.mobovideo.localpush.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LocalPushState Kkkkkkkkkkkkkkkkkkkkk2;
                Kkkkkkkkkkkkkkkkkkkkk2 = LocalPushStateStore.Kkkkkkkkkkkkkkkkkkkkk(j, (LocalPushState) obj);
                return Kkkkkkkkkkkkkkkkkkkkk2;
            }
        });
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkkkk(final long j) {
        Kkkkkkkkkkkkkk(new Function1() { // from class: com.changdu.mobovideo.localpush.Wwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LocalPushState Kkkkkkkkkkkkkkkkkkkkkkk2;
                Kkkkkkkkkkkkkkkkkkkkkkk2 = LocalPushStateStore.Kkkkkkkkkkkkkkkkkkkkkkk(j, (LocalPushState) obj);
                return Kkkkkkkkkkkkkkkkkkkkkkk2;
            }
        });
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkkkkkk(final long j) {
        Kkkkkkkkkkkkkk(new Function1() { // from class: com.changdu.mobovideo.localpush.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LocalPushState Kkkkkkkkkkkkkkkkkkkkkkkkk2;
                Kkkkkkkkkkkkkkkkkkkkkkkkk2 = LocalPushStateStore.Kkkkkkkkkkkkkkkkkkkkkkkkk(j, (LocalPushState) obj);
                return Kkkkkkkkkkkkkkkkkkkkkkkkk2;
            }
        });
    }

    public final void Wwww(final long j) {
        Kkkkkkkkkkkkkk(new Function1() { // from class: com.changdu.mobovideo.localpush.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LocalPushState Www2;
                Www2 = LocalPushStateStore.Www(j, (LocalPushState) obj);
                return Www2;
            }
        });
    }

    public final void Wwwwww(@NotNull final LocalPushType localPushType, final int i) {
        Kkkkkkkkkkkkkk(new Function1() { // from class: com.changdu.mobovideo.localpush.Wwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LocalPushState Wwwww2;
                Wwwww2 = LocalPushStateStore.Wwwww(LocalPushType.this, i, (LocalPushState) obj);
                return Wwwww2;
            }
        });
    }

    public final void Wwwwwwwww(final long j, final long j2) {
        if (j > 0 && j2 > 0) {
            Kkkkkkkkkkkkkk(new Function1() { // from class: com.changdu.mobovideo.localpush.Wwwwwwwwwwwwwwwwwwwwwwww
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    LocalPushState Wwwwwww2;
                    Wwwwwww2 = LocalPushStateStore.Wwwwwww(j2, j, (LocalPushState) obj);
                    return Wwwwwww2;
                }
            });
        }
    }

    public final LocalPushState Wwwwwwwwww() {
        JSONObject jSONObject;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LocalPushStorage.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("local_push_state_all_json", null);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !StringsKt.isBlank(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            try {
                jSONObject = new JSONObject(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            } catch (Throwable unused) {
            }
            try {
                return new LocalPushState(jSONObject.optLong("lastActualPushAtMs", 0L), jSONObject.optLong("queueTailAtMs", 0L), jSONObject.optLong("nextSignInCandidateAtMs", 0L), jSONObject.optLong("lastSignInPushAtMs", 0L), jSONObject.optLong("lastRecallPushAtMs", 0L), jSONObject.optLong("lastPromotionPushAtMs", 0L), jSONObject.optLong("lastRecallTriggerAtMs", 0L), jSONObject.optInt("signInContentIndex", 0), jSONObject.optInt("recallContentIndex", 0), jSONObject.optInt("promotionContentIndex", 0), Wwwwwwwwwwwwww(jSONObject.optJSONArray("recentPromotionSeries")));
            } catch (Throwable unused2) {
                LocalPushStorage.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("local_push_state_all_json", null);
                return new LocalPushState(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0, 0, 0, null, 2047, null);
            }
        }
        return new LocalPushState(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0, 0, 0, null, 2047, null);
    }

    public final List<PromotionSeriesRecord> Wwwwwwwwwwwww(List<PromotionSeriesRecord> list, final long j) {
        Object obj;
        if (list.isEmpty()) {
            return CollectionsKt.emptyList();
        }
        if (j <= 0) {
            return CollectionsKt.sortedWith(list, new Comparator() { // from class: com.changdu.mobovideo.localpush.LocalPushStateStore$pruneRecentPromotionSeries$$inlined$sortedByDescending$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues(Long.valueOf(((PromotionSeriesRecord) t2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), Long.valueOf(((PromotionSeriesRecord) t).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                }
            });
        }
        final long j2 = j - 172800000;
        Sequence filter = SequencesKt.filter(CollectionsKt.asSequence(list), new Function1() { // from class: com.changdu.mobovideo.localpush.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                boolean Wwwwwwwwwww2;
                Wwwwwwwwwww2 = LocalPushStateStore.Wwwwwwwwwww(j2, j, (PromotionSeriesRecord) obj2);
                return Boolean.valueOf(Wwwwwwwwwww2);
            }
        });
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj2 : filter) {
            Long valueOf = Long.valueOf(((PromotionSeriesRecord) obj2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            Object obj3 = linkedHashMap.get(valueOf);
            if (obj3 == null) {
                obj3 = new ArrayList();
                linkedHashMap.put(valueOf, obj3);
            }
            ((List) obj3).add(obj2);
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Iterator it = ((List) entry.getValue()).iterator();
            if (!it.hasNext()) {
                obj = null;
            } else {
                Object next = it.next();
                if (!it.hasNext()) {
                    obj = next;
                } else {
                    long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ((PromotionSeriesRecord) next).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    do {
                        Object next2 = it.next();
                        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = ((PromotionSeriesRecord) next2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 < Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3) {
                            next = next2;
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
                        }
                    } while (it.hasNext());
                    obj = next;
                }
            }
            PromotionSeriesRecord promotionSeriesRecord = (PromotionSeriesRecord) obj;
            if (promotionSeriesRecord != null) {
                arrayList.add(promotionSeriesRecord);
            }
        }
        return CollectionsKt.toList(CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.changdu.mobovideo.localpush.LocalPushStateStore$pruneRecentPromotionSeries$$inlined$sortedByDescending$2
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Long.valueOf(((PromotionSeriesRecord) t2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), Long.valueOf(((PromotionSeriesRecord) t).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
            }
        }));
    }

    public final List<PromotionSeriesRecord> Wwwwwwwwwwwwww(JSONArray jSONArray) {
        if (jSONArray != null && jSONArray.length() > 0) {
            ArrayList arrayList = new ArrayList();
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    long optLong = optJSONObject.optLong("seriesId", 0L);
                    long optLong2 = optJSONObject.optLong("pushedAtMs", 0L);
                    if (optLong > 0 && optLong2 > 0) {
                        arrayList.add(new PromotionSeriesRecord(optLong, optLong2));
                    }
                }
            }
            return Wwwwwwwwwwww(this, arrayList, 0L, 2, null);
        }
        return CollectionsKt.emptyList();
    }

    @NotNull
    public final List<Long> Wwwwwwwwwwwwwwww(long j) {
        LocalPushState Wwwwwwwwww2 = Wwwwwwwwww();
        List<PromotionSeriesRecord> Wwwwwwwwwwwww2 = Wwwwwwwwwwwww(Wwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww(), j);
        if (Wwwwwwwwwwwww2.size() != Wwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww().size()) {
            Kkkkkkkkkkkkk(LocalPushState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwww2, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0, 0, 0, Wwwwwwwwwwwww2, AnalyticsListener.EVENT_DRM_KEYS_LOADED, null));
        }
        List<PromotionSeriesRecord> list = Wwwwwwwwwwwww2;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (PromotionSeriesRecord promotionSeriesRecord : list) {
            arrayList.add(Long.valueOf(promotionSeriesRecord.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        }
        return arrayList;
    }

    public final long Wwwwwwwwwwwwwwwww() {
        return Wwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final long Wwwwwwwwwwwwwwwwww() {
        return Wwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final long Wwwwwwwwwwwwwwwwwww() {
        return Wwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final long Wwwwwwwwwwwwwwwwwwww() {
        return Wwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final long Wwwwwwwwwwwwwwwwwwwww() {
        return Wwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final long Wwwwwwwwwwwwwwwwwwwwww() {
        return Wwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwww() {
        return Wwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull LocalPushType localPushType) {
        LocalPushState Wwwwwwwwww2 = Wwwwwwwwww();
        int i = WhenMappings.$EnumSwitchMapping$0[localPushType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return Wwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                throw new NoWhenBranchMatchedException();
            }
            return Wwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww();
        }
        return Wwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww();
    }
}

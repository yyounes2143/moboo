package coil;

import coil.decode.Decoder;
import coil.fetch.Fetcher;
import coil.fetch.SourceResult;
import coil.intercept.Interceptor;
import coil.key.Keyer;
import coil.map.Mapper;
import coil.request.Options;
import coil.util.Collections;
import io.flutter.plugin.editing.SpellCheckPlugin;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001:\u00010B«\u0001\b\u0002\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u00120\u0010\b\u001a,\u0012(\u0012&\u0012\u0014\u0012\u0012\u0012\u0006\b\u0001\u0012\u00020\u0001\u0012\u0006\b\u0001\u0012\u00020\u00010\u0006\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u00070\u00050\u0002\u0012(\u0010\n\u001a$\u0012 \u0012\u001e\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\t\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u00070\u00050\u0002\u0012(\u0010\f\u001a$\u0012 \u0012\u001e\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u000b\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u00070\u00050\u0002\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u0002¢\u0006\u0004\b\u000f\u0010\u0010B\t\b\u0016¢\u0006\u0004\b\u000f\u0010\u0011J\u001d\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0018\u0010\u0019J?\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u00052\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u001a2\b\b\u0002\u0010\u001d\u001a\u00020\u001cH\u0007¢\u0006\u0004\b\u001f\u0010 J?\u0010$\u001a\u0010\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u00052\u0006\u0010\"\u001a\u00020!2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u001a2\b\b\u0002\u0010\u001d\u001a\u00020\u001cH\u0007¢\u0006\u0004\b$\u0010%J\r\u0010'\u001a\u00020&¢\u0006\u0004\b'\u0010(R\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,RA\u0010\b\u001a,\u0012(\u0012&\u0012\u0014\u0012\u0012\u0012\u0006\b\u0001\u0012\u00020\u0001\u0012\u0006\b\u0001\u0012\u00020\u00010\u0006\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u00070\u00050\u00028\u0006¢\u0006\f\n\u0004\b-\u0010*\u001a\u0004\b.\u0010,R9\u0010\n\u001a$\u0012 \u0012\u001e\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\t\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u00070\u00050\u00028\u0006¢\u0006\f\n\u0004\b+\u0010*\u001a\u0004\b/\u0010,R9\u0010\f\u001a$\u0012 \u0012\u001e\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u000b\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u00070\u00050\u00028\u0006¢\u0006\f\n\u0004\b/\u0010*\u001a\u0004\b-\u0010,R\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u00028\u0006¢\u0006\f\n\u0004\b.\u0010*\u001a\u0004\b)\u0010,¨\u00061"}, d2 = {"Lcoil/ComponentRegistry;", "", "", "Lcoil/intercept/Interceptor;", "interceptors", "Lkotlin/Pair;", "Lcoil/map/Mapper;", "Ljava/lang/Class;", "mappers", "Lcoil/key/Keyer;", "keyers", "Lcoil/fetch/Fetcher$Factory;", "fetcherFactories", "Lcoil/decode/Decoder$Factory;", "decoderFactories", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "()V", "data", "Lcoil/request/Options;", "options", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;Lcoil/request/Options;)Ljava/lang/Object;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;Lcoil/request/Options;)Ljava/lang/String;", "Lcoil/ImageLoader;", "imageLoader", "", SpellCheckPlugin.START_INDEX_KEY, "Lcoil/fetch/Fetcher;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;Lcoil/request/Options;Lcoil/ImageLoader;I)Lkotlin/Pair;", "Lcoil/fetch/SourceResult;", "result", "Lcoil/decode/Decoder;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/fetch/SourceResult;Lcoil/request/Options;Lcoil/ImageLoader;I)Lkotlin/Pair;", "Lcoil/ComponentRegistry$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/ComponentRegistry$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Builder", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ComponentRegistry {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Decoder.Factory> f1769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Pair<Fetcher.Factory<? extends Object>, Class<? extends Object>>> f1770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Pair<Keyer<? extends Object>, Class<? extends Object>>> f1771Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Pair<Mapper<? extends Object, ? extends Object>, Class<? extends Object>>> f1772Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Interceptor> f1773Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public /* synthetic */ ComponentRegistry(List list, List list2, List list3, List list4, List list5, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, list2, list3, list4, list5);
    }

    @JvmOverloads
    @Nullable
    public final Pair<Fetcher, Integer> Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Object obj, @NotNull Options options, @NotNull ImageLoader imageLoader, int i) {
        Fetcher Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        int size = this.f1770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
        while (i < size) {
            Pair<Fetcher.Factory<? extends Object>, Class<? extends Object>> pair = this.f1770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i);
            Fetcher.Factory<? extends Object> component1 = pair.component1();
            if (pair.component2().isAssignableFrom(obj.getClass()) && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = component1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj, options, imageLoader)) != null) {
                return TuplesKt.to(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Integer.valueOf(i));
            }
            i++;
        }
        return null;
    }

    @JvmOverloads
    @Nullable
    public final Pair<Decoder, Integer> Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SourceResult sourceResult, @NotNull Options options, @NotNull ImageLoader imageLoader, int i) {
        int size = this.f1769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
        while (i < size) {
            Decoder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f1769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sourceResult, options, imageLoader);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                return TuplesKt.to(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Integer.valueOf(i));
            }
            i++;
        }
        return null;
    }

    @NotNull
    public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new Builder(this);
    }

    @NotNull
    public final Object Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Object obj, @NotNull Options options) {
        Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        List<Pair<Mapper<? extends Object, ? extends Object>, Class<? extends Object>>> list = this.f1772Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Pair<Mapper<? extends Object, ? extends Object>, Class<? extends Object>> pair = list.get(i);
            Mapper<? extends Object, ? extends Object> component1 = pair.component1();
            if (pair.component2().isAssignableFrom(obj.getClass()) && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = component1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj, options)) != null) {
                obj = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        }
        return obj;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Object obj, @NotNull Options options) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        List<Pair<Keyer<? extends Object>, Class<? extends Object>>> list = this.f1771Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Pair<Keyer<? extends Object>, Class<? extends Object>> pair = list.get(i);
            Keyer<? extends Object> component1 = pair.component1();
            if (pair.component2().isAssignableFrom(obj.getClass()) && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = component1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj, options)) != null) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        }
        return null;
    }

    @NotNull
    public final List<Pair<Mapper<? extends Object, ? extends Object>, Class<? extends Object>>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1772Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final List<Pair<Keyer<? extends Object>, Class<? extends Object>>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1771Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final List<Interceptor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1773Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final List<Pair<Fetcher.Factory<? extends Object>, Class<? extends Object>>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final List<Decoder.Factory> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ComponentRegistry(List<? extends Interceptor> list, List<? extends Pair<? extends Mapper<? extends Object, ? extends Object>, ? extends Class<? extends Object>>> list2, List<? extends Pair<? extends Keyer<? extends Object>, ? extends Class<? extends Object>>> list3, List<? extends Pair<? extends Fetcher.Factory<? extends Object>, ? extends Class<? extends Object>>> list4, List<? extends Decoder.Factory> list5) {
        this.f1773Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        this.f1772Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list2;
        this.f1771Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list3;
        this.f1770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list4;
        this.f1769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list5;
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006J7\u0010\f\u001a\u00020\u0000\"\b\b\u0000\u0010\u0007*\u00020\u00012\u0010\u0010\t\u001a\f\u0012\u0004\u0012\u00028\u0000\u0012\u0002\b\u00030\b2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n¢\u0006\u0004\b\f\u0010\rJ3\u0010\u0010\u001a\u00020\u0000\"\b\b\u0000\u0010\u0007*\u00020\u00012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n¢\u0006\u0004\b\u0010\u0010\u0011J3\u0010\u0014\u001a\u00020\u0000\"\b\b\u0000\u0010\u0007*\u00020\u00012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u00122\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u0004¢\u0006\u0004\b\u0019\u0010\u001aR \u0010 \u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR@\u0010#\u001a(\u0012$\u0012\"\u0012\u0010\u0012\u000e\u0012\u0006\b\u0001\u0012\u00020\u0001\u0012\u0002\b\u00030\b\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\n0!0\u001b8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u001d\u001a\u0004\b\"\u0010\u001fR<\u0010%\u001a$\u0012 \u0012\u001e\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u000e\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\n0!0\u001b8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u001d\u001a\u0004\b$\u0010\u001fR<\u0010'\u001a$\u0012 \u0012\u001e\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0012\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\n0!0\u001b8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\f\u0010\u001d\u001a\u0004\b&\u0010\u001fR \u0010)\u001a\b\u0012\u0004\u0012\u00020\u00160\u001b8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001d\u001a\u0004\b(\u0010\u001f¨\u0006*"}, d2 = {"Lcoil/ComponentRegistry$Builder;", "", "<init>", "()V", "Lcoil/ComponentRegistry;", "registry", "(Lcoil/ComponentRegistry;)V", "T", "Lcoil/map/Mapper;", "mapper", "Ljava/lang/Class;", "type", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/map/Mapper;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;", "Lcoil/key/Keyer;", "keyer", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/key/Keyer;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;", "Lcoil/fetch/Fetcher$Factory;", "factory", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/fetch/Fetcher$Factory;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;", "Lcoil/decode/Decoder$Factory;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/decode/Decoder$Factory;)Lcoil/ComponentRegistry$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/ComponentRegistry;", "", "Lcoil/intercept/Interceptor;", "Ljava/util/List;", "getInterceptors$coil_base_release", "()Ljava/util/List;", "interceptors", "Lkotlin/Pair;", "getMappers$coil_base_release", "mappers", "getKeyers$coil_base_release", "keyers", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "fetcherFactories", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "decoderFactories", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Builder {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<Decoder.Factory> f1774Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<Pair<Fetcher.Factory<? extends Object>, Class<? extends Object>>> f1775Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<Pair<Keyer<? extends Object>, Class<? extends Object>>> f1776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<Pair<Mapper<? extends Object, ?>, Class<? extends Object>>> f1777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<Interceptor> f1778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder() {
            this.f1778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
            this.f1777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
            this.f1776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
            this.f1775Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
            this.f1774Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
        }

        @NotNull
        public final List<Pair<Fetcher.Factory<? extends Object>, Class<? extends Object>>> Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1775Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final List<Decoder.Factory> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f1774Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final ComponentRegistry Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new ComponentRegistry(Collections.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), Collections.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), Collections.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), Collections.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1775Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), Collections.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1774Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww), null);
        }

        @NotNull
        public final <T> Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Mapper<T, ?> mapper, @NotNull Class<T> cls) {
            this.f1777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(TuplesKt.to(mapper, cls));
            return this;
        }

        @NotNull
        public final <T> Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Keyer<T> keyer, @NotNull Class<T> cls) {
            this.f1776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(TuplesKt.to(keyer, cls));
            return this;
        }

        @NotNull
        public final <T> Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Fetcher.Factory<T> factory, @NotNull Class<T> cls) {
            this.f1775Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(TuplesKt.to(factory, cls));
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Decoder.Factory factory) {
            this.f1774Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(factory);
            return this;
        }

        public Builder(@NotNull ComponentRegistry componentRegistry) {
            this.f1778Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = CollectionsKt.toMutableList((Collection) componentRegistry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            this.f1777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = CollectionsKt.toMutableList((Collection) componentRegistry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            this.f1776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = CollectionsKt.toMutableList((Collection) componentRegistry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            this.f1775Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = CollectionsKt.toMutableList((Collection) componentRegistry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            this.f1774Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = CollectionsKt.toMutableList((Collection) componentRegistry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
    }

    public ComponentRegistry() {
        this(CollectionsKt.emptyList(), CollectionsKt.emptyList(), CollectionsKt.emptyList(), CollectionsKt.emptyList(), CollectionsKt.emptyList());
    }
}

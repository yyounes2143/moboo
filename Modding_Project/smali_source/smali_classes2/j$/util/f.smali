.class public final Lj$/util/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Lj$/util/Map;


# static fields
.field private static final serialVersionUID:J = 0x1b73f9094b4b397bL


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Lj$/util/f;

.field public transient c:Ljava/util/Set;

.field public transient d:Ljava/util/Set;

.field public transient e:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lj$/util/f;->a:Ljava/util/Map;

    .line 274
    iput-object p0, p0, Lj$/util/f;->b:Lj$/util/f;

    return-void
.end method

.method public static a(Ljava/util/Set;Lj$/util/f;)Ljava/util/Set;
    .locals 3

    .line 0
    sget-object v0, Lj$/util/DesugarCollections;->e:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 321
    invoke-static {p0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    .line 324
    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 328
    :goto_0
    new-instance p1, Ljava/lang/Error;

    const-string v0, "Unable to instantiate a synchronized list."

    invoke-direct {p1, v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 436
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 308
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 3

    .line 427
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    .line 0
    instance-of v2, v1, Lj$/util/Map;

    if-eqz v2, :cond_0

    check-cast v1, Lj$/util/Map;

    invoke-interface {v1, p1, p2}, Lj$/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v2, v1, Ljava/util/concurrent/ConcurrentMap;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1, p1, p2}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$compute(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {v1, p1, p2}, Lj$/util/Map$-CC;->$default$compute(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    .line 427
    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 3

    .line 417
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    .line 0
    instance-of v2, v1, Lj$/util/Map;

    if-eqz v2, :cond_0

    check-cast v1, Lj$/util/Map;

    invoke-interface {v1, p1, p2}, Lj$/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v2, v1, Ljava/util/concurrent/ConcurrentMap;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1, p1, p2}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {v1, p1, p2}, Lj$/util/Map$-CC;->$default$computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    .line 417
    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 3

    .line 422
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    .line 0
    instance-of v2, v1, Lj$/util/Map;

    if-eqz v2, :cond_0

    check-cast v1, Lj$/util/Map;

    invoke-interface {v1, p1, p2}, Lj$/util/Map;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v2, v1, Ljava/util/concurrent/ConcurrentMap;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1, p1, p2}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$computeIfPresent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {v1, p1, p2}, Lj$/util/Map$-CC;->$default$computeIfPresent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    .line 422
    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 2

    .line 289
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 2

    .line 292
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 3

    .line 358
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    .line 359
    :try_start_0
    iget-object v1, p0, Lj$/util/f;->d:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 360
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lj$/util/f;->b:Lj$/util/f;

    invoke-static {v1, v2}, Lj$/util/f;->a(Ljava/util/Set;Lj$/util/f;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lj$/util/f;->d:Ljava/util/Set;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 361
    :cond_0
    :goto_0
    iget-object v1, p0, Lj$/util/f;->d:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 362
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 376
    :cond_0
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final forEach(Ljava/util/function/BiConsumer;)V
    .locals 2

    .line 392
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    invoke-static {v1, p1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 295
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 388
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    invoke-static {v1, p1, p2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final hashCode()I
    .locals 2

    .line 379
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isEmpty()Z
    .locals 2

    .line 286
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final keySet()Ljava/util/Set;
    .locals 3

    .line 350
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    .line 351
    :try_start_0
    iget-object v1, p0, Lj$/util/f;->c:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 352
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lj$/util/f;->b:Lj$/util/f;

    invoke-static {v1, v2}, Lj$/util/f;->a(Ljava/util/Set;Lj$/util/f;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lj$/util/f;->c:Ljava/util/Set;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 353
    :cond_0
    :goto_0
    iget-object v1, p0, Lj$/util/f;->c:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 354
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2

    .line 432
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    invoke-static {v1, p1, p2, p3}, Lj$/util/Map$-EL;->merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 299
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2

    .line 305
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 400
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    invoke-static {v1, p1, p2}, Lj$/util/Map$-EL;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 302
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 404
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    invoke-static {v1, p1, p2}, Lj$/util/Map$-EL;->remove(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 412
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    .line 0
    instance-of v2, v1, Lj$/util/Map;

    if-eqz v2, :cond_0

    check-cast v1, Lj$/util/Map;

    invoke-interface {v1, p1, p2}, Lj$/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v1, p1, p2}, Lj$/util/Map$-CC;->$default$replace(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 412
    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 408
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    .line 0
    instance-of v2, v1, Lj$/util/Map;

    if-eqz v2, :cond_0

    check-cast v1, Lj$/util/Map;

    invoke-interface {v1, p1, p2, p3}, Lj$/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {v1, p1, p2, p3}, Lj$/util/Map$-CC;->$default$replace(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 408
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final replaceAll(Ljava/util/function/BiFunction;)V
    .locals 3

    .line 396
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    .line 0
    instance-of v2, v1, Lj$/util/Map;

    if-eqz v2, :cond_0

    check-cast v1, Lj$/util/Map;

    invoke-interface {v1, p1}, Lj$/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    goto :goto_0

    :cond_0
    instance-of v2, v1, Ljava/util/concurrent/ConcurrentMap;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1, p1}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$replaceAll(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiFunction;)V

    goto :goto_0

    :cond_1
    invoke-static {v1, p1}, Lj$/util/Map$-CC;->$default$replaceAll(Ljava/util/Map;Ljava/util/function/BiFunction;)V

    .line 396
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final size()I
    .locals 2

    .line 283
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 382
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final values()Ljava/util/Collection;
    .locals 6

    .line 366
    iget-object v0, p0, Lj$/util/f;->b:Lj$/util/f;

    monitor-enter v0

    .line 367
    :try_start_0
    iget-object v1, p0, Lj$/util/f;->e:Ljava/util/Collection;

    if-nez v1, :cond_1

    .line 368
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lj$/util/f;->b:Lj$/util/f;

    .line 0
    sget-object v3, Lj$/util/DesugarCollections;->d:Ljava/lang/reflect/Constructor;

    if-nez v3, :cond_0

    .line 338
    invoke-static {v1}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    .line 341
    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    :goto_0
    :try_start_2
    iput-object v1, p0, Lj$/util/f;->e:Ljava/util/Collection;

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    .line 345
    :goto_1
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Unable to instantiate a synchronized list."

    invoke-direct {v2, v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 369
    :cond_1
    :goto_2
    iget-object v1, p0, Lj$/util/f;->e:Ljava/util/Collection;

    monitor-exit v0

    return-object v1

    .line 370
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

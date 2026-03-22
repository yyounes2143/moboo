.class public Lorg/jacoco/core/runtime/RuntimeData;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/data/ExecutionDataStore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/jacoco/core/data/ExecutionDataStore;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/jacoco/core/data/ExecutionDataStore;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/jacoco/core/runtime/RuntimeData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/data/ExecutionDataStore;

    .line 10
    .line 11
    const-string v0, "<none>"

    .line 12
    .line 13
    iput-object v0, p0, Lorg/jacoco/core/runtime/RuntimeData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lorg/jacoco/core/runtime/RuntimeData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Ljava/lang/Object;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    .line 3
    .line 4
    check-cast v1, Ljava/lang/Long;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    aget-object v2, p1, v2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/String;

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    aget-object v3, p1, v3

    .line 13
    .line 14
    check-cast v3, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {p0, v1, v2, v3}, Lorg/jacoco/core/runtime/RuntimeData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Long;Ljava/lang/String;I)Lorg/jacoco/core/data/ExecutionData;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lorg/jacoco/core/data/ExecutionData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[Z

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    aput-object v1, p1, v0

    .line 29
    .line 30
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Long;Ljava/lang/String;I)Lorg/jacoco/core/data/ExecutionData;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jacoco/core/runtime/RuntimeData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/data/ExecutionDataStore;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/jacoco/core/runtime/RuntimeData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/data/ExecutionDataStore;

    .line 5
    .line 6
    invoke-virtual {v1, p1, p2, p3}, Lorg/jacoco/core/data/ExecutionDataStore;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Long;Ljava/lang/String;I)Lorg/jacoco/core/data/ExecutionData;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    monitor-exit v0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, [Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lorg/jacoco/core/runtime/RuntimeData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

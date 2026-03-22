.class final Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;,
        Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;
    }
.end annotation


# static fields
.field public static final Wwwwwwwwwwwwwwww:J

.field public static final Wwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;


# instance fields
.field public Wwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

.field public final Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/load/engine/prefill/PreFillType;",
            ">;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

.field public final Wwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    .line 7
    .line 8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    const-wide/16 v1, 0x1

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    sput-wide v0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwww:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sub-long/2addr v0, p1

    .line 8
    const-wide/16 p1, 0x20

    .line 9
    .line 10
    cmp-long p1, v0, p1

    .line 11
    .line 12
    if-ltz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    const-wide/16 v2, 0x4

    .line 4
    .line 5
    mul-long/2addr v2, v0

    .line 6
    sget-wide v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwww:J

    .line 7
    .line 8
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    iput-wide v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwwwww:J

    .line 13
    .line 14
    return-wide v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 8
    .line 9
    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getCurrentSize()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    sub-long/2addr v0, v2

    .line 14
    return-wide v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_3

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_3

    .line 20
    .line 21
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;

    .line 28
    .line 29
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;

    .line 36
    .line 37
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Bitmap$Config;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-interface {v3, v4, v5, v6}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Bitmap$Config;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    :goto_1
    invoke-static {v3}, Lcom/bumptech/glide/util/Util;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap;)I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    int-to-long v7, v4

    .line 84
    cmp-long v4, v5, v7

    .line 85
    .line 86
    if-ltz v4, :cond_2

    .line 87
    .line 88
    new-instance v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;

    .line 89
    .line 90
    invoke-direct {v4}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 94
    .line 95
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 96
    .line 97
    invoke-static {v3, v6}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-interface {v5, v4, v3}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 106
    .line 107
    invoke-interface {v4, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    const-string v3, "PreFillRunner"

    .line 111
    .line 112
    const/4 v4, 0x3

    .line 113
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_0

    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Bitmap$Config;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-static {v2}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwwww:Z

    .line 134
    .line 135
    if-nez v0, :cond_4

    .line 136
    .line 137
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-nez v0, :cond_4

    .line 144
    .line 145
    const/4 v0, 0x1

    .line 146
    return v0

    .line 147
    :cond_4
    const/4 v0, 0x0

    .line 148
    return v0
.end method

.method public run()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

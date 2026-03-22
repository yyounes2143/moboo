.class public final Lcom/bumptech/glide/request/SingleRequest;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/bumptech/glide/request/Request;
.implements Lcom/bumptech/glide/request/target/SizeReadyCallback;
.implements Lcom/bumptech/glide/request/ResourceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/SingleRequest$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/Request;",
        "Lcom/bumptech/glide/request/target/SizeReadyCallback;",
        "Lcom/bumptech/glide/request/ResourceCallback;"
    }
.end annotation


# static fields
.field public static final Wwww:Z


# instance fields
.field public Wwwww:Ljava/lang/RuntimeException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public Wwwwww:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public Wwwwwww:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public Wwwwwwww:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public Wwwwwwwww:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwww:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwww:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwww:Lcom/bumptech/glide/request/SingleRequest$Status;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public volatile Wwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Engine;

.field public Wwwwwwwwwwwwww:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public Wwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Resource;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwww:Ljava/util/concurrent/Executor;

.field public final Wwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/transition/TransitionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/target/Target;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/target/Target<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/Priority;

.field public final Wwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/GlideContext;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/RequestCoordinator;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/RequestListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/RequestListener<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/util/pool/StateVerifier;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "GlideRequest"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->Wwww:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/BaseRequestOptions;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Ljava/util/List;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/transition/TransitionFactory;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/bumptech/glide/request/RequestListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;II",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/target/Target<",
            "TR;>;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TR;>;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TR;>;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->Wwww:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/bumptech/glide/util/pool/StateVerifier;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 4
    iput-object p3, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/GlideContext;

    .line 7
    iput-object p4, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 8
    iput-object p5, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 9
    iput-object p6, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 10
    iput p7, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 11
    iput p8, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 12
    iput-object p9, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/Priority;

    .line 13
    iput-object p10, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/target/Target;

    .line 14
    iput-object p11, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/RequestListener;

    .line 15
    iput-object p12, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 16
    iput-object p13, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 17
    iput-object p14, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Engine;

    move-object/from16 p1, p15

    .line 18
    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/transition/TransitionFactory;

    move-object/from16 p1, p16

    .line 19
    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwww:Ljava/util/concurrent/Executor;

    .line 20
    sget-object p1, Lcom/bumptech/glide/request/SingleRequest$Status;->PENDING:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwww:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 21
    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwww:Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/bumptech/glide/GlideContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/GlideExperiments;

    move-result-object p1

    const-class p2, Lcom/bumptech/glide/GlideBuilder$LogRequestOrigins;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/GlideExperiments;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 22
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Glide request origin trace"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwww:Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method

.method public static Wwwwwwwwww(Landroid/content/Context;Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/BaseRequestOptions;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Ljava/util/List;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/transition/TransitionFactory;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/SingleRequest;
    .locals 17
    .param p11    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/request/BaseRequestOptions<",
            "*>;II",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/target/Target<",
            "TR;>;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TR;>;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TR;>;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/request/SingleRequest<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/SingleRequest;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    invoke-direct/range {v0 .. v16}, Lcom/bumptech/glide/request/SingleRequest;-><init>(Landroid/content/Context;Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/BaseRequestOptions;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Ljava/util/List;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/transition/TransitionFactory;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static Wwwwwwwwwwwww(IF)I
    .locals 1

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    int-to-float p0, p0

    .line 7
    mul-float/2addr p1, p0

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method


# virtual methods
.method public final Wwwwwww()V
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_2
    if-nez v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_3
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/target/Target;

    .line 31
    .line 32
    invoke-interface {v1, v0}, Lcom/bumptech/glide/request/target/Target;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final Wwwwwwww(Lcom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Z)V
    .locals 8
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TR;>;TR;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v5

    .line 5
    sget-object p4, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwww:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Resource;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/GlideContext;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/bumptech/glide/GlideContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 p4, 0x3

    .line 18
    if-gt p1, p4, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {p3}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    iget-wide v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwww:J

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/LogTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)D

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwww()V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwww:Z

    .line 41
    .line 42
    const/4 p4, 0x0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    move v7, p4

    .line 52
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/bumptech/glide/request/RequestListener;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 65
    .line 66
    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/target/Target;

    .line 67
    .line 68
    move-object v1, p2

    .line 69
    move-object v4, p3

    .line 70
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/request/RequestListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    or-int/2addr v7, p2

    .line 75
    move-object p2, v1

    .line 76
    move-object p3, v4

    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    move-object p1, v0

    .line 80
    goto :goto_4

    .line 81
    :cond_1
    :goto_1
    move-object v1, p2

    .line 82
    move-object v4, p3

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    move v7, p4

    .line 85
    goto :goto_1

    .line 86
    :goto_2
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/RequestListener;

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 91
    .line 92
    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/target/Target;

    .line 93
    .line 94
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/request/RequestListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_3

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_3
    move p1, p4

    .line 102
    :goto_3
    or-int/2addr p1, v7

    .line 103
    if-nez p1, :cond_4

    .line 104
    .line 105
    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/transition/TransitionFactory;

    .line 106
    .line 107
    invoke-interface {p1, v4, v5}, Lcom/bumptech/glide/request/transition/TransitionFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/transition/Transition;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/target/Target;

    .line 112
    .line 113
    invoke-interface {p2, v1, p1}, Lcom/bumptech/glide/request/target/Target;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    .line 116
    :cond_4
    iput-boolean p4, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwww:Z

    .line 117
    .line 118
    const-string p1, "GlideRequest"

    .line 119
    .line 120
    iget p2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 121
    .line 122
    invoke-static {p1, p2}, Lcom/bumptech/glide/util/pool/GlideTrace;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :goto_4
    iput-boolean p4, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwww:Z

    .line 127
    .line 128
    throw p1
.end method

.method public final Wwwwwwwww(Lcom/bumptech/glide/load/engine/GlideException;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwww:Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/load/engine/GlideException;->setOrigin(Ljava/lang/Exception;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/GlideContext;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/bumptech/glide/GlideContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-gt v1, p2, :cond_0

    .line 21
    .line 22
    iget-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-static {p2}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    const/4 p2, 0x4

    .line 28
    if-gt v1, p2, :cond_0

    .line 29
    .line 30
    const-string p2, "Glide"

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/load/engine/GlideException;->logRootCauses(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_4

    .line 38
    :cond_0
    :goto_0
    const/4 p2, 0x0

    .line 39
    iput-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 40
    .line 41
    sget-object p2, Lcom/bumptech/glide/request/SingleRequest$Status;->FAILED:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 42
    .line 43
    iput-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwww:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwww()V

    .line 46
    .line 47
    .line 48
    const/4 p2, 0x1

    .line 49
    iput-boolean p2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwww:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 53
    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    move v3, v1

    .line 61
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Lcom/bumptech/glide/request/RequestListener;

    .line 72
    .line 73
    iget-object v5, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 74
    .line 75
    iget-object v6, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/target/Target;

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwww()Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    invoke-interface {v4, p1, v5, v6, v7}, Lcom/bumptech/glide/request/RequestListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    or-int/2addr v3, v4

    .line 86
    goto :goto_1

    .line 87
    :catchall_1
    move-exception p1

    .line 88
    goto :goto_3

    .line 89
    :cond_1
    move v3, v1

    .line 90
    :cond_2
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/RequestListener;

    .line 91
    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    iget-object v4, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 95
    .line 96
    iget-object v5, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/target/Target;

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwww()Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    invoke-interface {v2, p1, v4, v5, v6}, Lcom/bumptech/glide/request/RequestListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    move p2, v1

    .line 110
    :goto_2
    or-int p1, v3, p2

    .line 111
    .line 112
    if-nez p1, :cond_4

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwww()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    .line 116
    .line 117
    :cond_4
    :try_start_2
    iput-boolean v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwww:Z

    .line 118
    .line 119
    const-string p1, "GlideRequest"

    .line 120
    .line 121
    iget p2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 122
    .line 123
    invoke-static {p1, p2}, Lcom/bumptech/glide/util/pool/GlideTrace;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    monitor-exit v0

    .line 127
    return-void

    .line 128
    :goto_3
    iput-boolean v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwww:Z

    .line 129
    .line 130
    throw p1

    .line 131
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    throw p1
.end method

.method public final Wwwwwwwwwww()V
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/request/Request;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final Wwwwwwwwwwww()V
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/request/Request;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final Wwwwwwwwwwwwww(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final Wwwwwwwwwwwwwww(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwwwwww()Landroid/content/res/Resources$Theme;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwwwwww()Landroid/content/res/Resources$Theme;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v1, p1, v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableDecoderCompat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwww()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bumptech/glide/request/RequestCoordinator;->getRoot()Lcom/bumptech/glide/request/RequestCoordinator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/bumptech/glide/request/RequestCoordinator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwww:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwww:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwwwwwwwwwwww()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwwwwwwwwwwww()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwww(I)Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwww:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwww:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwww:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwww:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwwwwwwwwwwwwwwwwww()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwwwwwwwwwwwwwwwwww()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwww(I)Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwww:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwww:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwww:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwww:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwww(I)Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwww:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwww:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/bumptech/glide/request/RequestListener;

    .line 21
    .line 22
    instance-of v2, v1, Lcom/bumptech/glide/request/ExperimentalRequestListener;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    check-cast v1, Lcom/bumptech/glide/request/ExperimentalRequestListener;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/request/ExperimentalRequestListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    :goto_1
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwww()V
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/target/Target;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/target/Target;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/request/Request;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/request/Request;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/request/Request;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwww:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/bumptech/glide/util/pool/StateVerifier;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iput-wide v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwww:J

    .line 17
    .line 18
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 23
    .line 24
    iget v2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/bumptech/glide/util/Util;->Wwwwwwwwwwwwww(II)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 33
    .line 34
    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwww:I

    .line 35
    .line 36
    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 37
    .line 38
    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwww:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    const/4 v1, 0x5

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v1, 0x3

    .line 53
    :goto_1
    new-instance v2, Lcom/bumptech/glide/load/engine/GlideException;

    .line 54
    .line 55
    const-string v3, "Received null model"

    .line 56
    .line 57
    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v2, v1}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwww(Lcom/bumptech/glide/load/engine/GlideException;I)V

    .line 61
    .line 62
    .line 63
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :cond_2
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwww:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 66
    .line 67
    sget-object v3, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 68
    .line 69
    if-eq v2, v3, :cond_8

    .line 70
    .line 71
    sget-object v4, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 72
    .line 73
    if-ne v2, v4, :cond_3

    .line 74
    .line 75
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Resource;

    .line 76
    .line 77
    sget-object v2, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    invoke-virtual {p0, v1, v2, v3}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;Z)V

    .line 81
    .line 82
    .line 83
    monitor-exit v0

    .line 84
    return-void

    .line 85
    :cond_3
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    const-string v1, "GlideRequest"

    .line 89
    .line 90
    invoke-static {v1}, Lcom/bumptech/glide/util/pool/GlideTrace;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 95
    .line 96
    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 97
    .line 98
    iput-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwww:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 99
    .line 100
    iget v2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 101
    .line 102
    iget v4, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 103
    .line 104
    invoke-static {v2, v4}, Lcom/bumptech/glide/util/Util;->Wwwwwwwwwwwwww(II)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_4

    .line 109
    .line 110
    iget v2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 111
    .line 112
    iget v4, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 113
    .line 114
    invoke-virtual {p0, v2, v4}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(II)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/target/Target;

    .line 119
    .line 120
    invoke-interface {v2, p0}, Lcom/bumptech/glide/request/target/Target;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    .line 121
    .line 122
    .line 123
    :goto_2
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwww:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 124
    .line 125
    if-eq v2, v3, :cond_5

    .line 126
    .line 127
    if-ne v2, v1, :cond_6

    .line 128
    .line 129
    :cond_5
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwww()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_6

    .line 134
    .line 135
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/target/Target;

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-interface {v1, v2}, Lcom/bumptech/glide/request/target/Target;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/drawable/Drawable;)V

    .line 142
    .line 143
    .line 144
    :cond_6
    sget-boolean v1, Lcom/bumptech/glide/request/SingleRequest;->Wwww:Z

    .line 145
    .line 146
    if-eqz v1, :cond_7

    .line 147
    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v2, "finished run method in "

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-wide v2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwww:J

    .line 159
    .line 160
    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)D

    .line 161
    .line 162
    .line 163
    move-result-wide v2

    .line 164
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_7
    monitor-exit v0

    .line 175
    return-void

    .line 176
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 177
    .line 178
    const-string v2, "Cannot restart a running request"

    .line 179
    .line 180
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v1

    .line 184
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    throw v1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/request/Request;)Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    instance-of v2, v0, Lcom/bumptech/glide/request/SingleRequest;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return v3

    .line 11
    :cond_0
    iget-object v2, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    iget v4, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 15
    .line 16
    iget v5, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 17
    .line 18
    iget-object v6, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v7, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 21
    .line 22
    iget-object v8, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 23
    .line 24
    iget-object v9, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/Priority;

    .line 25
    .line 26
    iget-object v10, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 27
    .line 28
    if-eqz v10, :cond_1

    .line 29
    .line 30
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_3

    .line 37
    :cond_1
    move v10, v3

    .line 38
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    check-cast v0, Lcom/bumptech/glide/request/SingleRequest;

    .line 40
    .line 41
    iget-object v11, v0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v11

    .line 44
    :try_start_1
    iget v2, v0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 45
    .line 46
    iget v12, v0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 47
    .line 48
    iget-object v13, v0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 49
    .line 50
    iget-object v14, v0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 51
    .line 52
    iget-object v15, v0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 53
    .line 54
    move/from16 v16, v3

    .line 55
    .line 56
    iget-object v3, v0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/Priority;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    goto :goto_1

    .line 67
    :catchall_1
    move-exception v0

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move/from16 v0, v16

    .line 70
    .line 71
    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    if-ne v4, v2, :cond_3

    .line 73
    .line 74
    if-ne v5, v12, :cond_3

    .line 75
    .line 76
    invoke-static {v6, v13}, Lcom/bumptech/glide/util/Util;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    invoke-virtual {v8, v15}, Lcom/bumptech/glide/request/BaseRequestOptions;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    if-ne v9, v3, :cond_3

    .line 95
    .line 96
    if-ne v10, v0, :cond_3

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    return v0

    .line 100
    :cond_3
    return v16

    .line 101
    :goto_2
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    throw v0

    .line 103
    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    throw v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwww:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 5
    .line 6
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 7
    .line 8
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwww:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 5
    .line 6
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(II)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    sget-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->Wwww:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v4, "Got onSizeReady in "

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-wide v4, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwww:J

    .line 26
    .line 27
    invoke-static {v4, v5}, Lcom/bumptech/glide/util/LogTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)D

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    move-object v3, v1

    .line 44
    move-object v1, v2

    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_0
    :goto_0
    iget-object v3, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwww:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 48
    .line 49
    sget-object v4, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 50
    .line 51
    if-eq v3, v4, :cond_1

    .line 52
    .line 53
    monitor-exit v2

    .line 54
    return-void

    .line 55
    :cond_1
    sget-object v3, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 56
    .line 57
    iput-object v3, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwww:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 58
    .line 59
    iget-object v4, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwwwwwww()F

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    move/from16 v5, p1

    .line 66
    .line 67
    invoke-static {v5, v4}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwww(IF)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    iput v5, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwww:I

    .line 72
    .line 73
    move/from16 v5, p2

    .line 74
    .line 75
    invoke-static {v5, v4}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwww(IF)I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    iput v4, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwww:I

    .line 80
    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v5, "finished setup for calling load in "

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-wide v5, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwww:J

    .line 94
    .line 95
    invoke-static {v5, v6}, Lcom/bumptech/glide/util/LogTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)D

    .line 96
    .line 97
    .line 98
    move-result-wide v5

    .line 99
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwww(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    .line 109
    :cond_2
    move-object v4, v2

    .line 110
    :try_start_1
    iget-object v2, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Engine;

    .line 111
    .line 112
    move-object v5, v3

    .line 113
    iget-object v3, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/GlideContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 114
    .line 115
    move-object v6, v4

    .line 116
    :try_start_2
    iget-object v4, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 117
    .line 118
    iget-object v7, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 119
    .line 120
    invoke-virtual {v7}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwwwwwwww()Lcom/bumptech/glide/load/Key;

    .line 121
    .line 122
    .line 123
    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 124
    move-object v8, v6

    .line 125
    :try_start_3
    iget v6, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwww:I

    .line 126
    .line 127
    move-object v9, v5

    .line 128
    move-object v5, v7

    .line 129
    iget v7, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwww:I

    .line 130
    .line 131
    iget-object v10, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 132
    .line 133
    invoke-virtual {v10}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwwwwwwwww()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    move-object v11, v9

    .line 138
    iget-object v9, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 139
    .line 140
    move-object v12, v8

    .line 141
    move-object v8, v10

    .line 142
    :try_start_4
    iget-object v10, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/Priority;

    .line 143
    .line 144
    iget-object v13, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 145
    .line 146
    invoke-virtual {v13}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 147
    .line 148
    .line 149
    move-result-object v13

    .line 150
    iget-object v14, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 151
    .line 152
    invoke-virtual {v14}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwwwww()Ljava/util/Map;

    .line 153
    .line 154
    .line 155
    move-result-object v14

    .line 156
    iget-object v15, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 157
    .line 158
    invoke-virtual {v15}, Lcom/bumptech/glide/request/BaseRequestOptions;->Kkkkkkkkkkkkkkkkkkkkkkkk()Z

    .line 159
    .line 160
    .line 161
    move-result v15

    .line 162
    move/from16 v22, v0

    .line 163
    .line 164
    iget-object v0, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->Www()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    move/from16 p1, v0

    .line 171
    .line 172
    iget-object v0, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwwwwwwwwwwwwwwww()Lcom/bumptech/glide/load/Options;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    move-object/from16 p2, v0

    .line 179
    .line 180
    iget-object v0, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwww()Z

    .line 183
    .line 184
    .line 185
    move-result v16

    .line 186
    iget-object v0, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwww()Z

    .line 189
    .line 190
    .line 191
    move-result v17

    .line 192
    iget-object v0, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwwww()Z

    .line 195
    .line 196
    .line 197
    move-result v18

    .line 198
    iget-object v0, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->Wwwwwwwwwwwwwwwwwwwww()Z

    .line 201
    .line 202
    .line 203
    move-result v19

    .line 204
    iget-object v0, v1, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwww:Ljava/util/concurrent/Executor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 205
    .line 206
    move-object/from16 v21, v0

    .line 207
    .line 208
    move-object/from16 v20, v1

    .line 209
    .line 210
    move-object v0, v11

    .line 211
    move-object v1, v12

    .line 212
    move-object v11, v13

    .line 213
    move-object v12, v14

    .line 214
    move v13, v15

    .line 215
    move/from16 v14, p1

    .line 216
    .line 217
    move-object/from16 v15, p2

    .line 218
    .line 219
    :try_start_5
    invoke-virtual/range {v2 .. v21}, Lcom/bumptech/glide/load/engine/Engine;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZLcom/bumptech/glide/load/Options;ZZZZLcom/bumptech/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 220
    .line 221
    .line 222
    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 223
    move-object/from16 v3, v20

    .line 224
    .line 225
    :try_start_6
    iput-object v2, v3, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 226
    .line 227
    iget-object v2, v3, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwww:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 228
    .line 229
    if-eq v2, v0, :cond_3

    .line 230
    .line 231
    const/4 v0, 0x0

    .line 232
    iput-object v0, v3, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 233
    .line 234
    goto :goto_1

    .line 235
    :catchall_1
    move-exception v0

    .line 236
    goto :goto_2

    .line 237
    :cond_3
    :goto_1
    if-eqz v22, :cond_4

    .line 238
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string v2, "finished onSizeReady in "

    .line 245
    .line 246
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    iget-wide v4, v3, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwww:J

    .line 250
    .line 251
    invoke-static {v4, v5}, Lcom/bumptech/glide/util/LogTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)D

    .line 252
    .line 253
    .line 254
    move-result-wide v4

    .line 255
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v3, v0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    :cond_4
    monitor-exit v1

    .line 266
    return-void

    .line 267
    :catchall_2
    move-exception v0

    .line 268
    move-object/from16 v3, v20

    .line 269
    .line 270
    goto :goto_2

    .line 271
    :catchall_3
    move-exception v0

    .line 272
    move-object v3, v1

    .line 273
    move-object v1, v12

    .line 274
    goto :goto_2

    .line 275
    :catchall_4
    move-exception v0

    .line 276
    move-object v3, v1

    .line 277
    move-object v1, v8

    .line 278
    goto :goto_2

    .line 279
    :catchall_5
    move-exception v0

    .line 280
    move-object v3, v1

    .line 281
    move-object v1, v6

    .line 282
    goto :goto_2

    .line 283
    :catchall_6
    move-exception v0

    .line 284
    move-object v3, v1

    .line 285
    move-object v1, v4

    .line 286
    :goto_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 287
    throw v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwww(Lcom/bumptech/glide/load/engine/GlideException;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    :try_start_1
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Lcom/bumptech/glide/load/engine/GlideException;

    .line 15
    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string p3, "Expected to receive a Resource<R> with an object of "

    .line 22
    .line 23
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object p3, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 27
    .line 28
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p3, " inside, but instead got null."

    .line 32
    .line 33
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/engine/GlideException;)V

    .line 44
    .line 45
    .line 46
    monitor-exit v1

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwww()Z

    .line 71
    .line 72
    .line 73
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    if-nez v3, :cond_2

    .line 75
    .line 76
    :try_start_2
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Resource;

    .line 77
    .line 78
    sget-object p2, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 79
    .line 80
    iput-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwww:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 81
    .line 82
    const-string p2, "GlideRequest"

    .line 83
    .line 84
    iget p3, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 85
    .line 86
    invoke-static {p2, p3}, Lcom/bumptech/glide/util/pool/GlideTrace;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    :goto_0
    iget-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Engine;

    .line 91
    .line 92
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/load/engine/Engine;->Wwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :catchall_1
    move-exception p2

    .line 97
    move-object v0, p1

    .line 98
    move-object p1, p2

    .line 99
    goto :goto_4

    .line 100
    :cond_2
    :try_start_3
    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwww(Lcom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Z)V

    .line 101
    .line 102
    .line 103
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    return-void

    .line 105
    :cond_3
    :goto_1
    :try_start_4
    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Resource;

    .line 106
    .line 107
    new-instance p2, Lcom/bumptech/glide/load/engine/GlideException;

    .line 108
    .line 109
    new-instance p3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v0, "Expected to receive an object of "

    .line 115
    .line 116
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 120
    .line 121
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v0, " but instead got "

    .line 125
    .line 126
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    if-eqz v2, :cond_4

    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    goto :goto_2

    .line 136
    :cond_4
    const-string v0, ""

    .line 137
    .line 138
    :goto_2
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v0, "{"

    .line 142
    .line 143
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v0, "} inside Resource{"

    .line 150
    .line 151
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v0, "}."

    .line 158
    .line 159
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    if-eqz v2, :cond_5

    .line 163
    .line 164
    const-string v0, ""

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_5
    const-string v0, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    .line 168
    .line 169
    :goto_3
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    invoke-direct {p2, p3}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/engine/GlideException;)V

    .line 180
    .line 181
    .line 182
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 183
    goto :goto_0

    .line 184
    :goto_4
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 185
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 186
    :catchall_2
    move-exception p1

    .line 187
    if-eqz v0, :cond_6

    .line 188
    .line 189
    iget-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Engine;

    .line 190
    .line 191
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/engine/Engine;->Wwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 192
    .line 193
    .line 194
    :cond_6
    throw p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwww:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 5
    .line 6
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public clear()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/bumptech/glide/util/pool/StateVerifier;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwww:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 13
    .line 14
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwww()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Resource;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iput-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Resource;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v1, v3

    .line 34
    :goto_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwww:Lcom/bumptech/glide/request/target/Target;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-interface {v3, v4}, Lcom/bumptech/glide/request/target/Target;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/drawable/Drawable;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    const-string v3, "GlideRequest"

    .line 50
    .line 51
    iget v4, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 52
    .line 53
    invoke-static {v3, v4}, Lcom/bumptech/glide/util/pool/GlideTrace;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwww:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 57
    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwww:Lcom/bumptech/glide/load/engine/Engine;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/Engine;->Wwwwwwwwwwwwwwwwwwwwwww(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    return-void

    .line 67
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw v1
.end method

.method public isRunning()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwww:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 5
    .line 6
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 7
    .line 8
    if-eq v1, v2, :cond_1

    .line 9
    .line 10
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 20
    :goto_1
    monitor-exit v0

    .line 21
    return v1

    .line 22
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->isRunning()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->clear()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Class;

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, "[model="

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ", transcodeClass="

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "]"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw v1
.end method

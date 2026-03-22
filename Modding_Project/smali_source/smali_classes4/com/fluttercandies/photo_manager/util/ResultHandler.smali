.class public final Lcom/fluttercandies/photo_manager/util/ResultHandler;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/photo_manager/util/ResultHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ-\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000c2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006#"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/util/ResultHandler;",
        "",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "result",
        "Lio/flutter/plugin/common/MethodCall;",
        "call",
        "<init>",
        "(Lio/flutter/plugin/common/MethodChannel$Result;Lio/flutter/plugin/common/MethodCall;)V",
        "any",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/Object;)V",
        "",
        "code",
        "message",
        "obj",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "getResult",
        "()Lio/flutter/plugin/common/MethodChannel$Result;",
        "setResult",
        "(Lio/flutter/plugin/common/MethodChannel$Result;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Lio/flutter/plugin/common/MethodCall;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lio/flutter/plugin/common/MethodCall;",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Z",
        "isReplied",
        "Companion",
        "photo_manager_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/fluttercandies/photo_manager/util/ResultHandler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/fluttercandies/photo_manager/util/ResultHandler$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/fluttercandies/photo_manager/util/ResultHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Companion:Lcom/fluttercandies/photo_manager/util/ResultHandler$Companion;

    .line 8
    .line 9
    new-instance v0, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;Lio/flutter/plugin/common/MethodCall;)V
    .locals 0
    .param p1    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugin/common/MethodCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 7
    .line 8
    sget-object p1, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/photo_manager/util/ResultHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    move-object p2, v0

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move-object p3, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 10
    .line 11
    sget-object v1, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v2, LKkkkkkkkkkkkkkkkkkkk/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 14
    .line 15
    invoke-direct {v2, v0, p1, p2, p3}, LKkkkkkkkkkkkkkkkkkkk/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 10
    .line 11
    sget-object v1, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v2, LKkkkkkkkkkkkkkkkkkkk/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 14
    .line 15
    invoke-direct {v2, v0, p1}, LKkkkkkkkkkkkkkkkkkkk/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 10
    .line 11
    sget-object v1, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v2, LKkkkkkkkkkkkkkkkkkkk/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 14
    .line 15
    invoke-direct {v2, v0}, LKkkkkkkkkkkkkkkkkkkk/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lio/flutter/plugin/common/MethodCall;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 2
    .line 3
    return-object v0
.end method

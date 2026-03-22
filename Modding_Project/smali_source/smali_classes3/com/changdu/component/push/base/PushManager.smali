.class public final Lcom/changdu/component/push/base/PushManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0016\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007J\u000e\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0015J\u0018\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0016\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0004J\u000e\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\tJ\u000e\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u000bJ\u0006\u0010\u001e\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/changdu/component/push/base/PushManager;",
        "",
        "()V",
        "PUSH_MESSAGE_TYPE_CHAT",
        "",
        "PUSH_MESSAGE_TYPE_MESSAGE",
        "mToken",
        "",
        "messageCallBack",
        "Lcom/changdu/component/push/base/BaseMessageCallback;",
        "tokenCallback",
        "Lcom/changdu/component/push/base/BaseTokenCallback;",
        "firebaseMessageHandleIntent",
        "",
        "intent",
        "Landroid/content/Intent;",
        "handleReceivedPushMessage",
        "messageId",
        "pushMessageJsonStr",
        "init",
        "context",
        "Landroid/content/Context;",
        "realReportToken",
        "token",
        "pushType",
        "registerToken",
        "setMessageCallBack",
        "callBack",
        "setTokenCallback",
        "callback",
        "tryRegisterToken",
        "push-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPushManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushManager.kt\ncom/changdu/component/push/base/PushManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,86:1\n1855#2,2:87\n*S KotlinDebug\n*F\n+ 1 PushManager.kt\ncom/changdu/component/push/base/PushManager\n*L\n26#1:87,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/changdu/component/push/base/PushManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PUSH_MESSAGE_TYPE_CHAT:I = 0x1

.field public static final PUSH_MESSAGE_TYPE_MESSAGE:I

.field private static mToken:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static messageCallBack:Lcom/changdu/component/push/base/BaseMessageCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static tokenCallback:Lcom/changdu/component/push/base/BaseTokenCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/component/push/base/PushManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/component/push/base/PushManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/component/push/base/PushManager;->INSTANCE:Lcom/changdu/component/push/base/PushManager;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    sput-object v0, Lcom/changdu/component/push/base/PushManager;->mToken:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final realReportToken(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/changdu/component/push/base/PushManager;->tokenCallback:Lcom/changdu/component/push/base/BaseTokenCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Lcom/changdu/component/push/base/BaseTokenCallback;->realReportToken(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final firebaseMessageHandleIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    sget-object v0, Lcom/changdu/component/push/base/PushManager;->messageCallBack:Lcom/changdu/component/push/base/BaseMessageCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/changdu/component/push/base/BaseMessageCallback;->firebaseMessageHandleIntent(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    :cond_0
    return-void
.end method

.method public final handleReceivedPushMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/changdu/component/push/base/PushManager;->messageCallBack:Lcom/changdu/component/push/base/BaseMessageCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/changdu/component/push/base/BaseMessageCallback;->handleReceivedPushMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/changdu/component/router/CDRouter;->INSTANCE:Lcom/changdu/component/router/CDRouter;

    .line 2
    .line 3
    const-class v1, Lcom/changdu/component/push/base/BasePushInstance;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/changdu/component/router/CDRouter;->invokeRouterServiceList(Ljava/lang/Class;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Iterable;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/changdu/component/push/base/BasePushInstance;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Lcom/changdu/component/push/base/BasePushInstance;->init(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public final registerToken(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/changdu/component/push/base/PushManager;->mToken:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/changdu/component/push/base/PushManager;->realReportToken(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setMessageCallBack(Lcom/changdu/component/push/base/BaseMessageCallback;)V
    .locals 0
    .param p1    # Lcom/changdu/component/push/base/BaseMessageCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/changdu/component/push/base/PushManager;->messageCallBack:Lcom/changdu/component/push/base/BaseMessageCallback;

    .line 2
    .line 3
    return-void
.end method

.method public final setTokenCallback(Lcom/changdu/component/push/base/BaseTokenCallback;)V
    .locals 0
    .param p1    # Lcom/changdu/component/push/base/BaseTokenCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/changdu/component/push/base/PushManager;->tokenCallback:Lcom/changdu/component/push/base/BaseTokenCallback;

    .line 2
    .line 3
    return-void
.end method

.method public final tryRegisterToken()V
    .locals 3

    .line 1
    sget-object v0, Lcom/changdu/component/router/CDRouter;->INSTANCE:Lcom/changdu/component/router/CDRouter;

    .line 2
    .line 3
    const-class v1, Lcom/changdu/component/push/base/BasePushInstance;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/changdu/component/router/CDRouter;->invokeRouterService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/changdu/component/push/base/BasePushInstance;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-object v1, Lcom/changdu/component/push/base/PushManager;->mToken:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-lez v1, :cond_1

    .line 21
    .line 22
    sget-object v1, Lcom/changdu/component/push/base/PushManager;->mToken:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/changdu/component/push/base/BasePushInstance;->getPushType()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-direct {p0, v1, v0}, Lcom/changdu/component/push/base/PushManager;->realReportToken(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {v0}, Lcom/changdu/component/push/base/BasePushInstance;->getDeviceToken()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-lez v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/changdu/component/push/base/BasePushInstance;->getPushType()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-direct {p0, v1, v0}, Lcom/changdu/component/push/base/PushManager;->realReportToken(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

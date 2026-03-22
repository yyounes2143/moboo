.class public abstract Lcom/facebook/AccessTokenTracker;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;,
        Lcom/facebook/AccessTokenTracker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008&\u0018\u0000 \u001a2\u00020\u0001:\u0002\u001a\u001bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J#\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004H$\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u0003J\r\u0010\u000b\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u000f\u0010\u000c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0003R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0012R$\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00148\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0016\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/facebook/AccessTokenTracker;",
        "",
        "<init>",
        "()V",
        "Lcom/facebook/AccessToken;",
        "oldAccessToken",
        "currentAccessToken",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/content/BroadcastReceiver;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/content/BroadcastReceiver;",
        "receiver",
        "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;",
        "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;",
        "broadcastManager",
        "",
        "<set-?>",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Z",
        "()Z",
        "isTracking",
        "Companion",
        "CurrentAccessTokenBroadcastReceiver",
        "facebook-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/AccessTokenTracker$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/BroadcastReceiver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/AccessTokenTracker$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/AccessTokenTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/AccessTokenTracker;->Companion:Lcom/facebook/AccessTokenTracker$Companion;

    .line 8
    .line 9
    const-class v0, Lcom/facebook/AccessTokenTracker;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/facebook/AccessTokenTracker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/facebook/internal/Validate;->Wwwwwwwwwwwwwwwwwwww()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;-><init>(Lcom/facebook/AccessTokenTracker;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/facebook/AccessTokenTracker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/BroadcastReceiver;

    .line 13
    .line 14
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwww()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/facebook/AccessTokenTracker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/facebook/AccessTokenTracker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/AccessTokenTracker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/facebook/AccessTokenTracker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/facebook/AccessTokenTracker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/BroadcastReceiver;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 15
    .line 16
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/AccessTokenTracker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 11
    .line 12
    return-void
.end method

.method public abstract Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .param p1    # Lcom/facebook/AccessToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/AccessToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/facebook/AccessTokenTracker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/facebook/AccessTokenTracker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/BroadcastReceiver;

    .line 14
    .line 15
    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

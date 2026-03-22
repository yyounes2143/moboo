.class public final Lcom/changdu/mobovideo/VideoApplication$onCreate$4;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/changdu/component/push/base/BaseMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/mobovideo/VideoApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/changdu/mobovideo/VideoApplication$onCreate$4",
        "Lcom/changdu/component/push/base/BaseMessageCallback;",
        "firebaseMessageHandleIntent",
        "",
        "intent",
        "Landroid/content/Intent;",
        "handleReceivedPushMessage",
        "messageId",
        "",
        "pushMessageJsonStr",
        "app_outsideRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/VideoApplication;


# direct methods
.method public constructor <init>(Lcom/changdu/mobovideo/VideoApplication;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/mobovideo/VideoApplication$onCreate$4;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/VideoApplication;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public firebaseMessageHandleIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/mobovideo/picture/PushAdapter;->INSTANCE:Lcom/changdu/mobovideo/picture/PushAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/changdu/mobovideo/picture/PushAdapter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public handleReceivedPushMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/changdu/mobovideo/picture/PushAdapter;->INSTANCE:Lcom/changdu/mobovideo/picture/PushAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/mobovideo/VideoApplication$onCreate$4;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/VideoApplication;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1, p1, p2}, Lcom/changdu/mobovideo/picture/PushAdapter;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

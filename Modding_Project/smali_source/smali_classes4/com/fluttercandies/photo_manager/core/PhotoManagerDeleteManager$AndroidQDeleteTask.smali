.class public final Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AndroidQDeleteTask"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0087\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;",
        "",
        "",
        "id",
        "Landroid/net/Uri;",
        "uri",
        "Landroid/app/RecoverableSecurityException;",
        "exception",
        "<init>",
        "(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;Ljava/lang/String;Landroid/net/Uri;Landroid/app/RecoverableSecurityException;)V",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()V",
        "",
        "resultCode",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(I)V",
        "Ljava/lang/String;",
        "getId",
        "()Ljava/lang/String;",
        "Landroid/net/Uri;",
        "getUri",
        "()Landroid/net/Uri;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/app/RecoverableSecurityException;",
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


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/RecoverableSecurityException;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;Ljava/lang/String;Landroid/net/Uri;Landroid/app/RecoverableSecurityException;)V
    .locals 0
    .param p1    # Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/app/RecoverableSecurityException;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/RecoverableSecurityException;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 7

    .line 1
    new-instance v3, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;)Landroid/app/Activity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/RecoverableSecurityException;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/fluttercandies/photo_manager/core/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/RecoverableSecurityException;)Landroid/app/RemoteAction;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/fluttercandies/photo_manager/core/Wwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/RemoteAction;)Landroid/app/PendingIntent;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.class public final Lcom/facebook/login/widget/ProfilePictureView$initialize$1;
.super Lcom/facebook/ProfileTracker;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\n\u0018\u00002\u00020\u0001J#\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "com/facebook/login/widget/ProfilePictureView$initialize$1",
        "Lcom/facebook/ProfileTracker;",
        "Lcom/facebook/Profile;",
        "oldProfile",
        "currentProfile",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/Profile;Lcom/facebook/Profile;)V",
        "facebook-login_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/ProfilePictureView;


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
    .locals 0
    .param p1    # Lcom/facebook/Profile;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/Profile;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView$initialize$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/ProfilePictureView;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/Profile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :goto_0
    invoke-virtual {p1, p2}, Lcom/facebook/login/widget/ProfilePictureView;->setProfileId(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView$initialize$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/widget/ProfilePictureView;

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    invoke-static {p1, p2}, Lcom/facebook/login/widget/ProfilePictureView;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/widget/ProfilePictureView;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

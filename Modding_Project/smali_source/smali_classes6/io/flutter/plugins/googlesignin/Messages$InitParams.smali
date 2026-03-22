.class public final Lio/flutter/plugins/googlesignin/Messages$InitParams;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/googlesignin/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;
    }
.end annotation


# instance fields
.field private clientId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private forceAccountName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private forceCodeForRefreshToken:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private hostedDomain:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private scopes:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serverClientId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private signInType:Lio/flutter/plugins/googlesignin/Messages$SignInType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/googlesignin/Messages$InitParams;
    .locals 2
    .param p0    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/flutter/plugins/googlesignin/Messages$InitParams;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/googlesignin/Messages$InitParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/googlesignin/Messages$InitParams;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->setScopes(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lio/flutter/plugins/googlesignin/Messages$SignInType;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->setSignInType(Lio/flutter/plugins/googlesignin/Messages$SignInType;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->setHostedDomain(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->setClientId(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->setServerClientId(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x5

    .line 57
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->setForceCodeForRefreshToken(Ljava/lang/Boolean;)V

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x6

    .line 67
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->setForceAccountName(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lio/flutter/plugins/googlesignin/Messages$InitParams;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lio/flutter/plugins/googlesignin/Messages$InitParams;

    .line 18
    .line 19
    iget-object v2, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->scopes:Ljava/util/List;

    .line 20
    .line 21
    iget-object v3, p1, Lio/flutter/plugins/googlesignin/Messages$InitParams;->scopes:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->signInType:Lio/flutter/plugins/googlesignin/Messages$SignInType;

    .line 30
    .line 31
    iget-object v3, p1, Lio/flutter/plugins/googlesignin/Messages$InitParams;->signInType:Lio/flutter/plugins/googlesignin/Messages$SignInType;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget-object v2, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->hostedDomain:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v3, p1, Lio/flutter/plugins/googlesignin/Messages$InitParams;->hostedDomain:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    iget-object v2, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->clientId:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v3, p1, Lio/flutter/plugins/googlesignin/Messages$InitParams;->clientId:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    iget-object v2, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->serverClientId:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v3, p1, Lio/flutter/plugins/googlesignin/Messages$InitParams;->serverClientId:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    iget-object v2, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->forceCodeForRefreshToken:Ljava/lang/Boolean;

    .line 70
    .line 71
    iget-object v3, p1, Lio/flutter/plugins/googlesignin/Messages$InitParams;->forceCodeForRefreshToken:Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    iget-object v2, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->forceAccountName:Ljava/lang/String;

    .line 80
    .line 81
    iget-object p1, p1, Lio/flutter/plugins/googlesignin/Messages$InitParams;->forceAccountName:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    return v0

    .line 90
    :cond_2
    :goto_0
    return v1
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->clientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getForceAccountName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->forceAccountName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getForceCodeForRefreshToken()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->forceCodeForRefreshToken:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHostedDomain()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->hostedDomain:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScopes()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->scopes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getServerClientId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->serverClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSignInType()Lio/flutter/plugins/googlesignin/Messages$SignInType;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->signInType:Lio/flutter/plugins/googlesignin/Messages$SignInType;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->scopes:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->signInType:Lio/flutter/plugins/googlesignin/Messages$SignInType;

    .line 4
    .line 5
    iget-object v2, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->hostedDomain:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->clientId:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->serverClientId:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->forceCodeForRefreshToken:Ljava/lang/Boolean;

    .line 12
    .line 13
    iget-object v6, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->forceAccountName:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v7, 0x7

    .line 16
    new-array v7, v7, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    aput-object v0, v7, v8

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    aput-object v1, v7, v0

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    aput-object v2, v7, v0

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    aput-object v3, v7, v0

    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    aput-object v4, v7, v0

    .line 32
    .line 33
    const/4 v0, 0x5

    .line 34
    aput-object v5, v7, v0

    .line 35
    .line 36
    const/4 v0, 0x6

    .line 37
    aput-object v6, v7, v0

    .line 38
    .line 39
    invoke-static {v7}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    return v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->clientId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setForceAccountName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->forceAccountName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setForceCodeForRefreshToken(Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->forceCodeForRefreshToken:Ljava/lang/Boolean;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"forceCodeForRefreshToken\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setHostedDomain(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->hostedDomain:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScopes(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->scopes:Ljava/util/List;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"scopes\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setServerClientId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->serverClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSignInType(Lio/flutter/plugins/googlesignin/Messages$SignInType;)V
    .locals 1
    .param p1    # Lio/flutter/plugins/googlesignin/Messages$SignInType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->signInType:Lio/flutter/plugins/googlesignin/Messages$SignInType;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"signInType\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public toList()Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->scopes:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->signInType:Lio/flutter/plugins/googlesignin/Messages$SignInType;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->hostedDomain:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->clientId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->serverClientId:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->forceCodeForRefreshToken:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams;->forceAccountName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

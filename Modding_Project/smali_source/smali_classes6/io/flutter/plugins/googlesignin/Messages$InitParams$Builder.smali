.class public final Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/googlesignin/Messages$InitParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hostedDomain:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private scopes:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
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
    .annotation build Landroidx/annotation/Nullable;
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


# virtual methods
.method public build()Lio/flutter/plugins/googlesignin/Messages$InitParams;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/googlesignin/Messages$InitParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/googlesignin/Messages$InitParams;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;->scopes:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->setScopes(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;->signInType:Lio/flutter/plugins/googlesignin/Messages$SignInType;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->setSignInType(Lio/flutter/plugins/googlesignin/Messages$SignInType;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;->hostedDomain:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->setHostedDomain(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;->clientId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->setClientId(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;->serverClientId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->setServerClientId(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;->forceCodeForRefreshToken:Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->setForceCodeForRefreshToken(Ljava/lang/Boolean;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;->forceAccountName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lio/flutter/plugins/googlesignin/Messages$InitParams;->setForceAccountName(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/googlesignin/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;->clientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setForceAccountName(Ljava/lang/String;)Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/googlesignin/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;->forceAccountName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setForceCodeForRefreshToken(Ljava/lang/Boolean;)Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/googlesignin/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;->forceCodeForRefreshToken:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setHostedDomain(Ljava/lang/String;)Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/googlesignin/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;->hostedDomain:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setScopes(Ljava/util/List;)Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;"
        }
    .end annotation

    .annotation build Lio/flutter/plugins/googlesignin/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;->scopes:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setServerClientId(Ljava/lang/String;)Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/googlesignin/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;->serverClientId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSignInType(Lio/flutter/plugins/googlesignin/Messages$SignInType;)Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;
    .locals 0
    .param p1    # Lio/flutter/plugins/googlesignin/Messages$SignInType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/googlesignin/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/Messages$InitParams$Builder;->signInType:Lio/flutter/plugins/googlesignin/Messages$SignInType;

    .line 2
    .line 3
    return-object p0
.end method

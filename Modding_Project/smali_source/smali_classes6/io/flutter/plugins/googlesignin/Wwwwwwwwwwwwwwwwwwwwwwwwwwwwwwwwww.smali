.class public final synthetic Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/auth/UserRecoverableAuthException;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugins/googlesignin/Messages$Result;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;Ljava/lang/Boolean;Lio/flutter/plugins/googlesignin/Messages$Result;Lcom/google/android/gms/auth/UserRecoverableAuthException;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 7
    .line 8
    iput-object p3, p0, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugins/googlesignin/Messages$Result;

    .line 9
    .line 10
    iput-object p4, p0, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/auth/UserRecoverableAuthException;

    .line 11
    .line 12
    iput-object p5, p0, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 4
    .line 5
    iget-object v2, p0, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugins/googlesignin/Messages$Result;

    .line 6
    .line 7
    iget-object v3, p0, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/google/android/gms/auth/UserRecoverableAuthException;

    .line 8
    .line 9
    iget-object v4, p0, Lio/flutter/plugins/googlesignin/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugins/googlesignin/GoogleSignInPlugin$Delegate;Ljava/lang/Boolean;Lio/flutter/plugins/googlesignin/Messages$Result;Lcom/google/android/gms/auth/UserRecoverableAuthException;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

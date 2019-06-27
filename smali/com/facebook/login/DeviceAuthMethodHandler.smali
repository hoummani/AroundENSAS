.class Lcom/facebook/login/DeviceAuthMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source "DeviceAuthMethodHandler.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/DeviceAuthMethodHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/facebook/login/DeviceAuthMethodHandler$1;

    invoke-direct {v0}, Lcom/facebook/login/DeviceAuthMethodHandler$1;-><init>()V

    sput-object v0, Lcom/facebook/login/DeviceAuthMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 110
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 0
    .param p1, "loginClient"    # Lcom/facebook/login/LoginClient;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 38
    return-void
.end method

.method public static declared-synchronized getBackgroundExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 3

    .prologue
    .line 101
    const-class v1, Lcom/facebook/login/DeviceAuthMethodHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/login/DeviceAuthMethodHandler;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/facebook/login/DeviceAuthMethodHandler;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 105
    :cond_0
    sget-object v0, Lcom/facebook/login/DeviceAuthMethodHandler;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private showDialog(Lcom/facebook/login/LoginClient$Request;)V
    .locals 3
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthMethodHandler;->createDeviceAuthDialog()Lcom/facebook/login/DeviceAuthDialog;

    move-result-object v0

    .line 48
    .local v0, "dialog":Lcom/facebook/login/DeviceAuthDialog;
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 49
    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "login_with_facebook"

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/DeviceAuthDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, p1}, Lcom/facebook/login/DeviceAuthDialog;->startLogin(Lcom/facebook/login/LoginClient$Request;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected createDeviceAuthDialog()Lcom/facebook/login/DeviceAuthDialog;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {v0}, Lcom/facebook/login/DeviceAuthDialog;-><init>()V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method getNameForLogging()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "device_auth"

    return-object v0
.end method

.method public onCancel()V
    .locals 3

    .prologue
    .line 59
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 60
    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    const-string v2, "User canceled log in."

    .line 59
    invoke-static {v1, v2}, Lcom/facebook/login/LoginClient$Result;->createCancelResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .line 62
    .local v0, "outcome":Lcom/facebook/login/LoginClient$Result;
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1, v0}, Lcom/facebook/login/LoginClient;->completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V

    .line 63
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 66
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 67
    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    const/4 v2, 0x0

    .line 69
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-static {v1, v2, v3}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .line 70
    .local v0, "outcome":Lcom/facebook/login/LoginClient$Result;
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1, v0}, Lcom/facebook/login/LoginClient;->completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V

    .line 71
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
    .locals 11
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p6, "accessTokenSource"    # Lcom/facebook/AccessTokenSource;
    .param p7, "expirationTime"    # Ljava/util/Date;
    .param p8, "lastRefreshTime"    # Ljava/util/Date;
    .param p9, "dataAccessExpirationTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/AccessTokenSource;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p4, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p5, "declinedPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/AccessToken;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 94
    .local v0, "token":Lcom/facebook/AccessToken;
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 95
    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    .line 94
    invoke-static {v1, v0}, Lcom/facebook/login/LoginClient$Result;->createTokenResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v10

    .line 97
    .local v10, "outcome":Lcom/facebook/login/LoginClient$Result;
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1, v10}, Lcom/facebook/login/LoginClient;->completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V

    .line 98
    return-void
.end method

.method tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z
    .locals 1
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/login/DeviceAuthMethodHandler;->showDialog(Lcom/facebook/login/LoginClient$Request;)V

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Lcom/facebook/login/LoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 125
    return-void
.end method

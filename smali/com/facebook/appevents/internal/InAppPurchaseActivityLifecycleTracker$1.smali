.class final Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$1;
.super Ljava/lang/Object;
.source "InAppPurchaseActivityLifecycleTracker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->initializeIfNotInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 105
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->asInterface(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->access$002(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 109
    return-void
.end method

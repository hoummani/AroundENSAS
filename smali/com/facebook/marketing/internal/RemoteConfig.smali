.class public final Lcom/facebook/marketing/internal/RemoteConfig;
.super Ljava/lang/Object;
.source "RemoteConfig.java"


# instance fields
.field private enableButtonIndexing:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "enableButtonIndexing"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p1, p0, Lcom/facebook/marketing/internal/RemoteConfig;->enableButtonIndexing:Z

    .line 28
    return-void
.end method


# virtual methods
.method public getEnableButtonIndexing()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/facebook/marketing/internal/RemoteConfig;->enableButtonIndexing:Z

    return v0
.end method

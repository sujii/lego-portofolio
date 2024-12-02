# --
# 1. INSTALL
# ---------

berry:
	@corepack enable
	@yarn init -2
	@yarn set version stable
	@echo '💬 [APP] Initialized yarn@berry ✨'

init:
	@yarn unlink && yarn link
	@yarn install
	@echo '💬 [APP] Workpaces Initialized ✨'

doppler:
	@brew install dopplerhq/cli/doppler
	@doppker login
	@echo '💬 [APP] Installed DopplerCLI ✨'

setup:
	@doppler setup
	@cd apps/web && doppler secrets download --no-file --format env > .env
	@yarn web prisma generate
	@echo '💬 [APP] Finished Workspaces Setups ✨'

env:
	@cd apps/web && doppler secrets download --no-file --format env > .env
	@echo '💬 [APP] Generated Environments ✨'

# --
# 2. BUILD
# ---------

generate:
	@yarn web prisma generate
	@echo '💬 [APP] Generated web/prisma ⚡️'

migrate:
	@yarn web prisma migrate dev
	@echo '💬 [APP] Migrated web/prisma ⚡️'

## this short hand
prisma:
	@yarn web prisma generate
	@yarn web prisma studio

dev:
	@yarn web dev
	@echo '💬 Booted up apps/web ⚡️'

# --
# shell shorthands
# ---------

envthis:
	@head -n 1 ./.env

envs:
	@cat ./.env

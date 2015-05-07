cask :v1 => 'p4merge' do
  version '2014.3-1007540'
  sha256 '07eac08f6bfb32e4a79bf47582116de8532fe0b18d91a014e1cd80861d6f0909'

  url "http://filehost.perforce.com/perforce/r#{version.sub(%r{^20},'')}/bin.macosx107x86_64/P4V.dmg"
  name 'P4Merge'
  homepage 'http://www.perforce.com/product/components/perforce-visual-merge-and-diff-tools'
  license :gratis
  tags :vendor => 'Perforce'

  app 'p4merge.app'

  zap :delete => [
                  '~/Library/Preferences/com.perforce.p4merge',
                  '~/Library/Preferences/com.perforce.p4merge.plist',
                  '~/Library/Saved Application State/com.perforce.p4merge.savedState'
                 ]

  caveats <<-EOS.undent
    git can be configured to use p4merge as a merge tool via

      https://gist.github.com/henrik242/1510148
  EOS
end
